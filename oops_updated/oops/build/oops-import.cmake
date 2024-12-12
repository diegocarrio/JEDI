# oops-import.cmake

include(CMakeFindDependencyMacro)

#Export enabled toymodels component availability (boolean)
set(oops_qg_FOUND ON) #COMPONENT qg
set(oops_lorenz95_FOUND ON) #COMPONENT lorenz95

if(1 AND NOT jedicmake_FOUND)
    find_dependency(jedicmake REQUIRED)
endif()

if((TRUE AND NOT LAPACK_FOUND) OR (FALSE AND NOT MKL_FOUND))
    if( FALSE )
        find_dependency( MKL REQUIRED )
        set( LAPACK_LIBRARIES ${MKL_LIBRARIES} )
    else()
        find_dependency( LAPACK REQUIRED )
    endif()
endif()

if(NOT Eigen3_FOUND)
    find_dependency( Eigen3 REQUIRED NO_MODULE HINTS /opt/views/view )
endif()

if(ON AND NOT (OpenMP_CXX_FOUND AND OpenMP_Fortran_FOUND))
    find_dependency( OpenMP REQUIRED COMPONENTS CXX Fortran )
endif()

if(NOT (MPI_CXX_FOUND AND MPI_Fortran_FOUND))
    find_dependency( MPI REQUIRED COMPONENTS CXX Fortran )
endif()

if(NOT NetCDF_Fortran_FOUND)
    find_dependency( NetCDF REQUIRED COMPONENTS Fortran )
endif()

if(NOT Boost_FOUND)
    find_dependency( Boost REQUIRED )
endif()

if(NOT eckit_FOUND)
    find_dependency( eckit REQUIRED COMPONENTS MPI )
endif()

if(NOT fckit_FOUND)
    find_dependency( fckit REQUIRED )
endif()

if(NOT atlas_FOUND)
    if(TRUE)
        find_dependency( atlas REQUIRED COMPONENTS OMP OMP_Fortran )
    else()
        find_dependency( atlas REQUIRED )
    endif()
endif()

if(OFF AND NOT GPTL_FOUND)
    find_dependency( GPTL REQUIRED )
endif()

if(1 AND NOT nlohmann_json_FOUND)
    find_dependency(nlohmann_json QUIET)
endif()
if (1 AND NOT nlohmann_json_schema_validator_FOUND)
    find_dependency(nlohmann_json_schema_validator QUIET)
endif()

#Export Fortran compiler version for checking module compatibility
set(oops_MODULES_Fortran_COMPILER_ID GNU)
set(oops_MODULES_Fortran_COMPILER_VERSION 9.4.0)
if(NOT oops_MODULES_Fortran_COMPILER_ID STREQUAL CMAKE_Fortran_COMPILER_ID
   OR NOT oops_MODULES_Fortran_COMPILER_VERSION VERSION_EQUAL CMAKE_Fortran_COMPILER_VERSION)
    message(SEND_ERROR "Package oops provides Fortran modules built with "
            "${oops_MODULES_Fortran_COMPILER_ID}-${oops_MODULES_Fortran_COMPILER_VERSION} "
            "but this build for ${PROJECT_NAME} uses incompatible compiler ${CMAKE_Fortran_COMPILER_ID}-${CMAKE_Fortran_COMPILER_VERSION}")
endif()
