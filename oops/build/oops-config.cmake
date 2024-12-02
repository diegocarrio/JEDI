# Config file for the oops package
# Defines the following variables:
#
#  oops_FEATURES       - list of enabled features
#  oops_VERSION        - version of the package
#  oops_GIT_SHA1       - Git revision of the package
#  oops_GIT_SHA1_SHORT - short Git revision of the package
#  oops_MODULES_Fortran_COMPILER_ID - CMAKE_Fortran_COMPILER_ID of compiler for modules
#  oops_MODULES_Fortran_COMPILER_VERSION - CMAKE_Fortran_COMPILER_VERSION of compiler for modules
#  oops_COEFFICIENT_DIR - Path to coefficient "fix" directory


####### Expanded from @PACKAGE_INIT@ by configure_package_config_file() #######
####### Any changes to this file will be overwritten by the next CMake run ####
####### The input file was oops-config.cmake.in                            ########

get_filename_component(PACKAGE_PREFIX_DIR "${CMAKE_CURRENT_LIST_DIR}/" ABSOLUTE)

macro(set_and_check _var _file)
  set(${_var} "${_file}")
  if(NOT EXISTS "${_file}")
    message(FATAL_ERROR "File or directory ${_file} referenced by variable ${_var} does not exist !")
  endif()
endmacro()

macro(check_required_components _NAME)
  foreach(comp ${${_NAME}_FIND_COMPONENTS})
    if(NOT ${_NAME}_${comp}_FOUND)
      if(${_NAME}_FIND_REQUIRED_${comp})
        set(${_NAME}_FOUND FALSE)
      endif()
    endif()
  endforeach()
endmacro()

####################################################################################

### computed paths
set_and_check(oops_CMAKE_DIR "${PACKAGE_PREFIX_DIR}/.")
set_and_check(oops_BASE_DIR "${PACKAGE_PREFIX_DIR}/")
if(DEFINED ECBUILD_2_COMPAT AND ECBUILD_2_COMPAT)
  set(OOPS_CMAKE_DIR ${oops_CMAKE_DIR})
  set(OOPS_BASE_DIR ${oops_BASE_DIR})
endif()

### export version info
set(oops_VERSION           "1.8.0")
set(oops_GIT_SHA1          "")
set(oops_GIT_SHA1_SHORT    "")

if(DEFINED ECBUILD_2_COMPAT AND ECBUILD_2_COMPAT)
  set(OOPS_VERSION           "1.8.0" )
  set(OOPS_GIT_SHA1          "" )
  set(OOPS_GIT_SHA1_SHORT    "" )
endif()

### has this configuration been exported from a build tree?
set(oops_IS_BUILD_DIR_EXPORT ON)
if(DEFINED ECBUILD_2_COMPAT AND ECBUILD_2_COMPAT)
  set(OOPS_IS_BUILD_DIR_EXPORT ${oops_IS_BUILD_DIR_EXPORT})
endif()

########### ADDED TO DEFAULT ECBUILD ############
### export project specific variables
# oops_BINDIR - Path to project binaries configured for build or install contexts
if(ON)
    set_and_check(oops_BINDIR "${PACKAGE_PREFIX_DIR}/bin")
else()
    set_and_check(oops_BINDIR "/usr/local/bin")
endif()
set(oops_LIBRARIES oops) #TODO: Change to oops::oops with namespace upgrade
if(ON)
    set(oops_lorenz95_LIBRARIES lorenz95)  #TODO: Change to oops::lorenz95 with namespace upgrade
endif()
if(ON)
    set(oops_qg_LIBRARIES qg) #TODO: Change to oops::qg with namespace upgrade
endif()
########### ADDED TO DEFAULT ECBUILD ############

### include the <project>-import.cmake file if there is one
if(EXISTS ${oops_CMAKE_DIR}/oops-import.cmake)
  set(oops_IMPORT_FILE "${oops_CMAKE_DIR}/oops-import.cmake")
  include(${oops_IMPORT_FILE})
endif()

### handle third-party dependencies
if(DEFINED ECBUILD_2_COMPAT AND ECBUILD_2_COMPAT)
  set(OOPS_LIBRARIES         "")
  set(OOPS_TPLS              "" )

  include(${CMAKE_CURRENT_LIST_FILE}.tpls OPTIONAL)
endif()

### insert definitions for IMPORTED targets
if(NOT oops_BINARY_DIR)
  find_file(oops_TARGETS_FILE
    NAMES oops-targets.cmake
    HINTS ${oops_CMAKE_DIR};/home/nonroot/shared/oops/build
    NO_DEFAULT_PATH)
  if(oops_TARGETS_FILE)
    include(${oops_TARGETS_FILE})
  endif()
endif()

### JSON schema file generation function "oops_output_json_schema"
if(EXISTS "${oops_CMAKE_DIR}/oops_output_json_schema.cmake")
  include("${oops_CMAKE_DIR}/oops_output_json_schema.cmake")
endif()

### publish this file as imported
if( DEFINED ECBUILD_2_COMPAT AND ECBUILD_2_COMPAT )
  set(oops_IMPORT_FILE ${CMAKE_CURRENT_LIST_FILE})
  mark_as_advanced(oops_IMPORT_FILE)
  set(OOPS_IMPORT_FILE ${CMAKE_CURRENT_LIST_FILE})
  mark_as_advanced(OOPS_IMPORT_FILE)
endif()



### export features and check requirements
set(oops_FEATURES "TESTS")
if(DEFINED ECBUILD_2_COMPAT AND ECBUILD_2_COMPAT)
  set(OOPS_FEATURES ${oops_FEATURES})
endif()
foreach(_f ${oops_FEATURES})
  set(oops_${_f}_FOUND 1)
  set(oops_HAVE_${_f} 1)
  if(DEFINED ECBUILD_2_COMPAT AND ECBUILD_2_COMPAT)
    set(OOPS_HAVE_${_f} 1)
  endif()
endforeach()
check_required_components(oops)
