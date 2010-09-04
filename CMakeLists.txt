cmake_minimum_required(VERSION 2.6)
project(PYTHON)

# Options
if (NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE "Release" CACHE STRING "Choose the type of build, options are: None (CMAKE_CXX_FLAGS or CMAKE_C_FLAGS used) Debug Release RelWithDebInfo MinSizeRel." FORCE)
endif()

# Set the output path
if (NOT ATHENA_BINARY_DIR)
    set(ATHENA_BINARY_DIR "${PYTHON_BINARY_DIR}")
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${PYTHON_BINARY_DIR}/bin")
    set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY "${PYTHON_BINARY_DIR}/lib")
    set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${PYTHON_BINARY_DIR}/bin")
endif()

# Import XMake
if (EXISTS "${PYTHON_SOURCE_DIR}/xmake/XMake.cmake")
    include("${PYTHON_SOURCE_DIR}/xmake/XMake.cmake")
endif()

# XMake settings
xmake_init_dynamic(PYTHON)
xmake_add_include_paths(PYTHON "${PYTHON_SOURCE_DIR}/Include" "${ATHENA_BINARY_DIR}/include/Python")
xmake_add_link_paths(PYTHON "${CMAKE_RUNTIME_OUTPUT_DIRECTORY}")
xmake_add_link_flags(PYTHON "-lpython3.1")

# We use an external script to build Python
add_custom_target(python ALL "${PYTHON_SOURCE_DIR}/build_python.sh" "${PYTHON_SOURCE_DIR}" "MacOSX"
                  WORKING_DIRECTORY "${ATHENA_BINARY_DIR}"
                  COMMENT "Building Python")
