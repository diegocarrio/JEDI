/*
 * (C) Copyright 2017-2018 UCAR
 *
 * This software is licensed under the terms of the Apache Licence Version 2.0
 * which can be obtained at http://www.apache.org/licenses/LICENSE-2.0.
 */

#ifndef TEST_INTERFACE_LINEAROBSOPERATOR_H_
#define TEST_INTERFACE_LINEAROBSOPERATOR_H_

#include <memory>
#include <string>
#include <vector>

#define ECKIT_TESTING_SELF_REGISTER_CASES 0


#include "eckit/testing/Test.h"
#include "oops/base/ObsTypeParameters.h"
#include "oops/base/Variables.h"
#include "oops/generic/instantiateObsErrorFactory.h"
#include "oops/interface/LinearObsOperator.h"
#include "oops/interface/ObsAuxControl.h"
#include "oops/interface/ObsAuxCovariance.h"
#include "oops/interface/ObsAuxIncrement.h"
#include "oops/interface/ObsDiagnostics.h"
#include "oops/interface/ObsOperator.h"
#include "oops/runs/Test.h"
#include "oops/util/dot_product.h"
#include "oops/util/Expect.h"
#include "oops/util/Logger.h"
#include "test/interface/ObsTestsFixture.h"
#include "test/TestEnvironment.h"

namespace test {

// -----------------------------------------------------------------------------

class LinearObsOperatorTestParameters : public oops::Parameters {
  OOPS_CONCRETE_PARAMETERS(LinearObsOperatorTestParameters, Parameters)

 public:
  oops::RequiredParameter<double> toleranceTL{"tolerance TL", this};
  oops::RequiredParameter<double> toleranceAD{"tolerance AD", this};

  oops::Parameter<double> coefTL{"coef TL", 0.1, this};
  oops::Parameter<int> iterationsTL{"iterations TL", 1, this};
};

// -----------------------------------------------------------------------------

/// \brief Options used to configure a test simulating observations from a single obs space
/// using a particular LinearObsOperator.
template <typename OBS>
class ObsTypeParameters : public oops::ObsTypeParametersBase<OBS> {
  typedef oops::ObsTypeParametersBase<OBS> Base;
  OOPS_CONCRETE_PARAMETERS(ObsTypeParameters, Base)

  typedef typename oops::GeoVaLs<OBS>::Parameters_ GeoVaLsParameters_;

 public:
  /// Overridden to perform some extra checks that can't currently be done by the JSON schema
  /// validator.
  void deserialize(util::CompositePath &path, const eckit::Configuration &config) override;

 public:
  /// Options used to load GeoVaLs from a file.
  oops::RequiredParameter<GeoVaLsParameters_> geovals{"geovals", this};

  // One of these parameters must be set.
  oops::OptionalParameter<std::string> expectConstructorToThrow{
    "expect constructor to throw exception with message", this};
  oops::OptionalParameter<std::string> expectSetTrajectoryToThrow{
    "expect setTrajectory to throw exception with message", this};
  oops::OptionalParameter<std::string> expectSimulateObsToThrow{
    "expect simulateObs to throw exception with message", this};
  oops::OptionalParameter<std::string> expectSimulateObsTLToThrow{
    "expect simulateObsTL to throw exception with message", this};
  oops::OptionalParameter<std::string> expectSimulateObsADToThrow{
    "expect simulateObsAD to throw exception with message", this};
  oops::OptionalParameter<LinearObsOperatorTestParameters> linearObsOperatorTest{
    "linear obs operator test", this};

 private:
  // Parameters ignored by this test but used by the ObsOperator test. Both tests tend to
  // use the same YAML files.
  oops::Parameter<eckit::LocalConfiguration> tolerance{
    "tolerance", eckit::LocalConfiguration(), this};
  oops::Parameter<eckit::LocalConfiguration> vectorRef{
    "vector ref", eckit::LocalConfiguration(), this};
  oops::Parameter<eckit::LocalConfiguration> normRef{
    "norm ref", eckit::LocalConfiguration(), this};
  oops::Parameter<eckit::LocalConfiguration> rmsRef{
    "rms ref", eckit::LocalConfiguration(), this};
};

// -----------------------------------------------------------------------------

template <typename OBS>
void ObsTypeParameters<OBS>::deserialize(util::CompositePath &path,
                                         const eckit::Configuration &config) {
  Base::deserialize(path, config);

  if (linearObsOperatorTest.value() == boost::none &&
      expectConstructorToThrow.value() == boost::none &&
      expectSetTrajectoryToThrow.value() == boost::none &&
      expectSimulateObsToThrow.value() == boost::none &&
      // If none of the options above are set, the two options below must both be set to ensure we
      // don't try to access the value of linearObsOperatorTest either from the TL or AD tests
      (expectSimulateObsTLToThrow.value() == boost::none ||
       expectSimulateObsADToThrow.value() == boost::none)) {
    throw eckit::UserError(path.path() +
                           ": At least one of the 'tolerance', "
                           "'expect constructor to throw exception with message' and "
                           "'expect setTrajectory to throw exception with message' and "
                           "'expect simulateObs to throw exception with message' and "
                           "'expect simulateObsTL to throw exception with message' and "
                           "'expect simulateObsAD to throw exception with message' options "
                           "must be set");
  }
}

// -----------------------------------------------------------------------------

/// \brief Top-level options taken by the LinearObsOperator test.
template <typename OBS>
class TestParameters : public oops::Parameters {
  OOPS_CONCRETE_PARAMETERS(TestParameters, Parameters)

 public:
  /// Only observations taken at times lying in the (`window begin`, `window end`] interval
  /// will be included in observation spaces.
  oops::RequiredParameter<util::DateTime> windowBegin{"window begin", this};
  oops::RequiredParameter<util::DateTime> windowEnd{"window end", this};
  /// Each element of this list configures an observation space and an operator whose capability
  /// of simulating observations from this space is to be tested.
  oops::Parameter<std::vector<ObsTypeParameters<OBS>>> observations{"observations", {}, this};
};

// -----------------------------------------------------------------------------

/// \brief Extract linear obs operator parameters from the 'linear obs operator' YAML option
/// if present or from the 'obs operator' option otherwise.
template <typename OBS>
typename oops::LinearObsOperator<OBS>::Parameters_ linearObsOperatorParameters(
    const ObsTypeParameters<OBS> &obsTypeParameters)
{
  typedef typename oops::LinearObsOperator<OBS>::Parameters_ LinearObsOperatorParameters_;
  if (obsTypeParameters.observer.linearObsOperator.value() != boost::none)
    return *obsTypeParameters.observer.linearObsOperator.value();
  else
    // [Comment copied from ObserverTLAD.h]
    // Hack: when "linear obs operator" is not specified in the input file, reinterpret
    //       the entry for "obs operator" as a linear obs operator option. In the long
    //       term, we need a design that either,
    //       - allows constructing LinearObsOperator from either set of Parameters, or
    //       - merges the two sets of Parameters so this switch can be removed
    return oops::validateAndDeserialize<LinearObsOperatorParameters_>(
        obsTypeParameters.observer.obsOperator.value().toConfiguration());
}

// -----------------------------------------------------------------------------
/// \brief tests constructor and print method
template <typename OBS> void testConstructor() {
  typedef oops::LinearObsOperator<OBS>             LinearObsOperator_;
  typedef typename LinearObsOperator_::Parameters_ LinearObsOperatorParameters_;
  typedef ObsTypeParameters<OBS>                   ObsTypeParameters_;
  typedef ObsTestsFixture<OBS>                     Test_;
  typedef TestParameters<OBS>                      TestParameters_;

  TestParameters_ testParams;
  testParams.validateAndDeserialize(TestEnvironment::config());

  for (std::size_t jj = 0; jj < Test_::obspace().size(); ++jj) {
    const ObsTypeParameters_ &obsTypeParams = testParams.observations.value()[jj];
    const LinearObsOperatorParameters_ linobsopparams = linearObsOperatorParameters(obsTypeParams);

    if (obsTypeParams.expectConstructorToThrow.value() == boost::none) {
      std::unique_ptr<LinearObsOperator_> linobsop(
        new LinearObsOperator_(Test_::obspace()[jj], linobsopparams));
      EXPECT(linobsop.get());
      oops::Log::info() << "Testing LinearObsOperator: " << *linobsop << std::endl;
      linobsop.reset();
      EXPECT(!linobsop.get());
    } else {
      // The constructor is expected to throw an exception containing the specified string.
      const std::string &expectedMessage = *obsTypeParams.expectConstructorToThrow.value();
      EXPECT_THROWS_MSG(LinearObsOperator_(Test_::obspace()[jj], linobsopparams),
                        expectedMessage.c_str());
    }
  }
}

// -----------------------------------------------------------------------------

template <typename OBS> void testLinearity() {
  typedef ObsTestsFixture<OBS>         Test_;
  typedef TestParameters<OBS>          TestParameters_;
  typedef oops::GeoVaLs<OBS>           GeoVaLs_;
  typedef oops::ObsAuxControl<OBS>     ObsAuxCtrl_;
  typedef oops::ObsAuxIncrement<OBS>   ObsAuxIncr_;
  typedef oops::ObsAuxCovariance<OBS>  ObsAuxCov_;
  typedef oops::ObsOperator<OBS>       ObsOperator_;
  typedef oops::LinearObsOperator<OBS> LinearObsOperator_;
  typedef ObsTypeParameters<OBS>       ObsTypeParameters_;
  typedef oops::ObsVector<OBS>         ObsVector_;

  const double zero = 0.0;
  const double coef = 3.14;
  const double tol = 1.0e-11;

  TestParameters_ testParams;
  testParams.validateAndDeserialize(TestEnvironment::config());

  for (std::size_t jj = 0; jj < Test_::obspace().size(); ++jj) {
    const ObsTypeParameters_ &obsTypeParams = testParams.observations.value()[jj];
    if (obsTypeParams.expectConstructorToThrow.value() != boost::none ||
        obsTypeParams.expectSetTrajectoryToThrow.value() != boost::none ||
        obsTypeParams.expectSimulateObsToThrow.value() != boost::none ||
        obsTypeParams.expectSimulateObsTLToThrow.value() != boost::none)
      continue;

    // initialize observation operator (set variables requested from the model,
    // variables simulated by the observation operator, other init)
    ObsOperator_ hop(Test_::obspace()[jj], obsTypeParams.observer.obsOperator);
    // initialize TL/AD observation operator (set model variables for Jacobian),
    // other init)
    LinearObsOperator_ hoptl(Test_::obspace()[jj], linearObsOperatorParameters(obsTypeParams));

    // initialize obs bias
    const ObsAuxCtrl_ ybias(Test_::obspace()[jj], obsTypeParams.obsBias);
    ObsAuxIncr_ ybinc(Test_::obspace()[jj], obsTypeParams.obsBias);

    // initialize geovals
    oops::Variables hopvars = hop.requiredVars();
    oops::Variables reducedHopvars = ybias.requiredVars();
    hopvars += reducedHopvars;
    // read geovals from the file (in the sampled format)
    GeoVaLs_ gval(obsTypeParams.geovals, Test_::obspace()[jj], hopvars);
    // convert geovals to the reduced format
    hop.computeReducedVars(reducedHopvars, gval);

     // initialize Obs. Bias Covariance
    const ObsAuxCov_ Bobsbias(Test_::obspace()[jj], obsTypeParams.obsBias);

    // set trajectory for TL/AD to be the geovals from the file
    hoptl.setTrajectory(gval, ybias);

    // create obsvector
    ObsVector_ dy1(Test_::obspace()[jj]);

    // create geovals
    const oops::Variables hoptlvars = hoptl.requiredVars();
    GeoVaLs_ dx(obsTypeParams.geovals, Test_::obspace()[jj], hoptlvars);

    // test rms(H * (dx, ybinc)) = 0, when dx = 0
    dx.zero();
    ybinc.zero();
    hoptl.simulateObsTL(dx, dy1, ybinc);
    EXPECT(dy1.rms() == zero);

    // test rms(H * (dx, ybinc)) > 0, when dx is random
    dx.random();
    Bobsbias.randomize(ybinc);
    hoptl.simulateObsTL(dx, dy1, ybinc);
    EXPECT(dy1.rms() > zero);

    // test k * H * (dx, ybinc) ~ H * (k*dx, k*ybinc)
    dy1 *= coef;
    dx  *= coef;
    ybinc *= coef;
    ObsVector_ dy2(Test_::obspace()[jj]);
    hoptl.simulateObsTL(dx, dy2, ybinc);

    dy2 -= dy1;
    EXPECT(dy2.rms() / dy1.rms() < tol);
  }
}

// -----------------------------------------------------------------------------

template <typename OBS> void testAdjoint() {
  typedef ObsTestsFixture<OBS> Test_;
  typedef TestParameters<OBS>          TestParameters_;
  typedef oops::GeoVaLs<OBS>           GeoVaLs_;
  typedef oops::ObsOperator<OBS>       ObsOperator_;
  typedef oops::LinearObsOperator<OBS> LinearObsOperator_;
  typedef oops::ObsAuxControl<OBS>     ObsAuxCtrl_;
  typedef oops::ObsAuxIncrement<OBS>   ObsAuxIncr_;
  typedef oops::ObsAuxCovariance<OBS>  ObsAuxCov_;
  typedef ObsTypeParameters<OBS>       ObsTypeParameters_;
  typedef oops::ObsVector<OBS>         ObsVector_;

  const double zero = 0.0;

  TestParameters_ testParams;
  testParams.validateAndDeserialize(TestEnvironment::config());

  for (std::size_t jj = 0; jj < Test_::obspace().size(); ++jj) {
    const ObsTypeParameters_ &obsTypeParams = testParams.observations.value()[jj];
    if (obsTypeParams.expectConstructorToThrow.value() != boost::none ||
        obsTypeParams.expectSetTrajectoryToThrow.value() != boost::none ||
        obsTypeParams.expectSimulateObsToThrow.value() != boost::none ||
        obsTypeParams.expectSimulateObsTLToThrow.value() != boost::none ||
        obsTypeParams.expectSimulateObsADToThrow.value() != boost::none)
      continue;

    // initialize observation operator (set variables requested from the model,
    // variables simulated by the observation operator, other init)
    ObsOperator_ hop(Test_::obspace()[jj], obsTypeParams.observer.obsOperator);
    // initialize TL/AD observation operator (set model variables for Jacobian),
    // other init)
    LinearObsOperator_ hoptl(Test_::obspace()[jj], linearObsOperatorParameters(obsTypeParams));

    const double tol = obsTypeParams.linearObsOperatorTest.value()->toleranceAD;
    // initialize bias correction
    const ObsAuxCtrl_ ybias(Test_::obspace()[jj], obsTypeParams.obsBias);
    ObsAuxIncr_ ybinc1(Test_::obspace()[jj], obsTypeParams.obsBias);  // TL
    ObsAuxIncr_ ybinc2(Test_::obspace()[jj], obsTypeParams.obsBias);  // AD

    // initialize Obs. Bias Covariance
    const ObsAuxCov_ Bobsbias(Test_::obspace()[jj], obsTypeParams.obsBias);

    // initialize geovals
    oops::Variables hopvars = hop.requiredVars();
    oops::Variables reducedHopvars = ybias.requiredVars();
    hopvars += reducedHopvars;  // the reduced format is derived from the sampled format
    // read geovals from the file (in the sampled format)
    GeoVaLs_ gval(obsTypeParams.geovals, Test_::obspace()[jj], hopvars);
    // convert geovals to the reduced format
    hop.computeReducedVars(reducedHopvars, gval);

    // set TL/AD trajectory to the geovals from the file
    hoptl.setTrajectory(gval, ybias);

    ObsVector_ dy1(Test_::obspace()[jj]);
    ObsVector_ dy2(Test_::obspace()[jj]);
    const oops::Variables hoptlvars = hoptl.requiredVars();
    GeoVaLs_ dx1(obsTypeParams.geovals, Test_::obspace()[jj], hoptlvars);
    GeoVaLs_ dx2(obsTypeParams.geovals, Test_::obspace()[jj], hoptlvars);

    // calculate dy1 = H (dx1, ybinc1) (with random dx1, and random ybinc1)
    dx1.random();
    EXPECT(dot_product(dx1, dx1) > zero);  //  BOOST_REQUIRE
    Bobsbias.randomize(ybinc1);
    hoptl.simulateObsTL(dx1, dy1, ybinc1);
    EXPECT(dot_product(dy1, dy1) > zero);

    // calculate (dx2, ybinc2) = HT dy2 (with random dy2)
    dy2.random();
    EXPECT(dot_product(dy2, dy2) > zero);  //  BOOST_REQUIRE
    dx2.zero();
    ybinc2.zero();
    hoptl.simulateObsAD(dx2, dy2, ybinc2);
    EXPECT(dot_product(dx2, dx2) > zero);

    const double zz1 = dot_product(dx1, dx2) + dot_product(ybinc1, ybinc2);
    const double zz2 = dot_product(dy1, dy2);

    oops::Log::info() << "Adjoint test result: (<x,HTy>-<Hx,y>)/<Hx,y> = "
                       << (zz1-zz2)/zz2 << std::endl;

    EXPECT(zz1 != zero);
    EXPECT(zz2 != zero);
    EXPECT(oops::is_close(zz1, zz2, tol));
  }
}

// -----------------------------------------------------------------------------

template <typename OBS> void testTangentLinear() {
  // Test  ||(hop(x+alpha*dx)-hop(x)) - hoptl(alpha*dx)|| < tol
  typedef ObsTestsFixture<OBS>         Test_;
  typedef TestParameters<OBS>          TestParameters_;
  typedef oops::GeoVaLs<OBS>           GeoVaLs_;
  typedef oops::ObsDiagnostics<OBS>    ObsDiags_;
  typedef oops::ObsAuxControl<OBS>     ObsAuxCtrl_;
  typedef oops::ObsAuxIncrement<OBS>   ObsAuxIncr_;
  typedef oops::ObsAuxCovariance<OBS>  ObsAuxCov_;
  typedef oops::ObsOperator<OBS>       ObsOperator_;
  typedef oops::LinearObsOperator<OBS> LinearObsOperator_;
  typedef ObsTypeParameters<OBS>       ObsTypeParameters_;
  typedef oops::ObsVector<OBS>         ObsVector_;

  TestParameters_ testParams;
  testParams.validateAndDeserialize(TestEnvironment::config());

  for (std::size_t jj = 0; jj < Test_::obspace().size(); ++jj) {
    const ObsTypeParameters_ &obsTypeParams = testParams.observations.value()[jj];
    if (obsTypeParams.expectConstructorToThrow.value() != boost::none ||
        obsTypeParams.expectSetTrajectoryToThrow.value() != boost::none ||
        obsTypeParams.expectSimulateObsToThrow.value() != boost::none ||
        obsTypeParams.expectSimulateObsTLToThrow.value() != boost::none)
      continue;

    // initialize observation operator (set variables requested from the model,
    // variables simulated by the observation operator, other init)
    ObsOperator_ hop(Test_::obspace()[jj], obsTypeParams.observer.obsOperator);
    // initialize TL/AD observation operator (set model variables for Jacobian),
    // other init)
    LinearObsOperator_ hoptl(Test_::obspace()[jj], linearObsOperatorParameters(obsTypeParams));

    const double tol = obsTypeParams.linearObsOperatorTest.value()->toleranceTL;
    const double alpha = obsTypeParams.linearObsOperatorTest.value()->coefTL;
    const int iter = obsTypeParams.linearObsOperatorTest.value()->iterationsTL;

    // initialize obs bias from file
    const ObsAuxCtrl_ ybias0(Test_::obspace()[jj], obsTypeParams.obsBias);
    ObsAuxCtrl_ ybias(Test_::obspace()[jj], obsTypeParams.obsBias);

    // initialize Obs. Bias Covariance
    const ObsAuxCov_ Bobsbias(Test_::obspace()[jj], obsTypeParams.obsBias);

    // initialize geovals
    oops::Variables hopvars = hop.requiredVars();
    oops::Variables reducedHopvars = ybias0.requiredVars();
    hopvars += reducedHopvars;  // the reduced format is derived from the sampled format
    // read geovals from the file
    GeoVaLs_ x0(obsTypeParams.geovals, Test_::obspace()[jj], hopvars);
    GeoVaLs_ x(obsTypeParams.geovals, Test_::obspace()[jj], hopvars);
    // convert geovals to the reduced format
    hop.computeReducedVars(reducedHopvars, x0);
    hop.computeReducedVars(reducedHopvars, x);

    // set TL trajectory to the geovals and the bias coeff. from the files
    hoptl.setTrajectory(x0, ybias0);

    // create obsvectors
    ObsVector_ y1(Test_::obspace()[jj]);
    ObsVector_ y2(Test_::obspace()[jj]);
    ObsVector_ y3(Test_::obspace()[jj]);
    ObsVector_ bias(Test_::obspace()[jj]);
    bias.zero();

    // create obsdatavector to hold diags
    oops::Variables diagvars;
    diagvars += ybias0.requiredHdiagnostics();
    ObsDiags_ ydiag(Test_::obspace()[jj], hop.locations(), diagvars);

    // y1 = hop(x0, ybias0)
    hop.simulateObs(x0, y1, ybias0, bias, ydiag);

    // randomize dx and ybinc
    const oops::Variables hoptlvars = hoptl.requiredVars();
    GeoVaLs_ dx(obsTypeParams.geovals, Test_::obspace()[jj], hoptlvars);
    dx.random();
    ObsAuxIncr_ ybinc(Test_::obspace()[jj], obsTypeParams.obsBias);
    Bobsbias.randomize(ybinc);

    // scale dx by x0
    dx *= x0;

    for (int jter = 0; jter < iter; ++jter) {
      // x = x0 + alpha*dx
      dx *= alpha;
      x = x0;
      x += dx;
      // ybias = ybias0 + alpha*ybinc
      ybinc *= alpha;
      ybias = ybias0;
      ybias += ybinc;
      bias.zero();

      // y2 = hop(x0+alpha*dx, ybias0+alpha*ybinc)
      hop.simulateObs(x, y2, ybias, bias, ydiag);
      y2 -= y1;
      // y3 = hoptl(alpha*dx, alpha*ybinc)
      hoptl.simulateObsTL(dx, y3, ybinc);
      y2 -= y3;

      double test_norm = y2.rms();
      oops::Log::info() << "Iter:" << jter << " ||(h(x+alpha*dx)-h(x)-h'*(alpha*dx))||="
                        << test_norm << std::endl;
    }
    EXPECT(y2.rms() < tol);
  }
}

// -----------------------------------------------------------------------------

template <typename OBS> void testException() {
  typedef ObsTestsFixture<OBS>         Test_;
  typedef TestParameters<OBS>          TestParameters_;
  typedef oops::GeoVaLs<OBS>           GeoVaLs_;
  typedef oops::ObsOperator<OBS>       ObsOperator_;
  typedef oops::LinearObsOperator<OBS> LinearObsOperator_;
  typedef oops::ObsAuxControl<OBS>     ObsAuxCtrl_;
  typedef oops::ObsAuxIncrement<OBS>   ObsAuxIncr_;
  typedef oops::ObsAuxCovariance<OBS>  ObsAuxCov_;
  typedef ObsTypeParameters<OBS>       ObsTypeParameters_;
  typedef oops::ObsVector<OBS>         ObsVector_;

  TestParameters_ testParams;
  testParams.validateAndDeserialize(TestEnvironment::config());

  for (std::size_t jj = 0; jj < Test_::obspace().size(); ++jj) {
    const ObsTypeParameters_ &obsTypeParams = testParams.observations.value()[jj];
    if (obsTypeParams.expectConstructorToThrow.value() != boost::none)
      continue;

    // Set up objects prior to throwing exceptions.
    ObsOperator_ hop(Test_::obspace()[jj], obsTypeParams.observer.obsOperator);
    LinearObsOperator_ hoptl(Test_::obspace()[jj], linearObsOperatorParameters(obsTypeParams));
    const ObsAuxCtrl_ ybias(Test_::obspace()[jj], obsTypeParams.obsBias);
    ObsAuxIncr_ ybinc(Test_::obspace()[jj], obsTypeParams.obsBias);
    const ObsAuxCov_ Bobsbias(Test_::obspace()[jj], obsTypeParams.obsBias);
    oops::Variables hopvars = hop.requiredVars();
    oops::Variables reducedHopvars = ybias.requiredVars();
    hopvars += reducedHopvars;
    GeoVaLs_ gval(obsTypeParams.geovals, Test_::obspace()[jj], hopvars);
    hop.computeReducedVars(reducedHopvars, gval);
    oops::Variables diagvars;
    diagvars += ybias.requiredHdiagnostics();
    const oops::Variables hoptlvars = hoptl.requiredVars();

    if (obsTypeParams.expectSetTrajectoryToThrow.value() != boost::none) {
      // The setTrajectory method is expected to throw an exception
      // containing the specified string.
      const std::string expectedMessage = *obsTypeParams.expectSetTrajectoryToThrow.value();
      EXPECT_THROWS_MSG(hoptl.setTrajectory(gval, ybias),
                        expectedMessage.c_str());
      // Do not continue further because setTrajectory must be run
      // before simulateObsTL and simulateObsAD.
      continue;
    }

    if (obsTypeParams.expectSimulateObsTLToThrow.value() != boost::none) {
      hoptl.setTrajectory(gval, ybias);
      ObsVector_ dy1(Test_::obspace()[jj]);
      GeoVaLs_ dx1(obsTypeParams.geovals, Test_::obspace()[jj], hoptlvars);
      dx1.random();
      Bobsbias.randomize(ybinc);
      // The simulateObsTL method is expected to throw an exception
      // containing the specified string.
      const std::string expectedMessage = *obsTypeParams.expectSimulateObsTLToThrow.value();
      EXPECT_THROWS_MSG(hoptl.simulateObsTL(dx1, dy1, ybinc),
                        expectedMessage.c_str());
    }

    if (obsTypeParams.expectSimulateObsADToThrow.value() != boost::none) {
      hoptl.setTrajectory(gval, ybias);
      ObsVector_ dy2(Test_::obspace()[jj]);
      GeoVaLs_ dx2(obsTypeParams.geovals, Test_::obspace()[jj], hoptlvars);
      Bobsbias.randomize(ybinc);
      dy2.random();
      dx2.zero();
      ybinc.zero();
      // The simulateObsAD method is expected to throw an exception
      // containing the specified string.
      const std::string expectedMessage = *obsTypeParams.expectSimulateObsADToThrow.value();
      EXPECT_THROWS_MSG(hoptl.simulateObsAD(dx2, dy2, ybinc),
                        expectedMessage.c_str());
    }
  }
}

// -----------------------------------------------------------------------------

template <typename OBS>
class LinearObsOperator : public oops::Test {
  typedef ObsTestsFixture<OBS> Test_;

 public:
  LinearObsOperator() {
    // Needed because oops::ObsTypeParametersBase contains obs error parameters.
    oops::instantiateObsErrorFactory<OBS>();
  }
  virtual ~LinearObsOperator() {}

 private:
  std::string testid() const override {return "test::LinearObsOperator<" + OBS::name() + ">";}

  void register_tests() const override {
    std::vector<eckit::testing::Test>& ts = eckit::testing::specification();

    ts.emplace_back(CASE("interface/LinearObsOperator/testConstructor")
      { testConstructor<OBS>(); });
    ts.emplace_back(CASE("interface/LinearObsOperator/testLinearity")
      { testLinearity<OBS>(); });
    ts.emplace_back(CASE("interface/LinearObsOperator/testTangentLinear")
      { testTangentLinear<OBS>(); });
    ts.emplace_back(CASE("interface/LinearObsOperator/testAdjoint")
      { testAdjoint<OBS>(); });
    ts.emplace_back(CASE("interface/LinearObsOperator/testException")
      { testException<OBS>(); });
  }

  void clear() const override {
    Test_::reset();
  }
};

// -----------------------------------------------------------------------------

}  // namespace test

#endif  // TEST_INTERFACE_LINEAROBSOPERATOR_H_
