include(FetchContent)

FetchContent_Declare(
  poolcore
  GIT_REPOSITORY https://github.com/wombatlabs/poolcore.git
  GIT_TAG        master
  GIT_SHALLOW    1
  SOURCE_DIR     ${CMAKE_SOURCE_DIR}/../dependencies/poolcore
)

FetchContent_GetProperties(poolcore)
if (NOT poolcore_POPULATED)
  FetchContent_Populate(poolcore)
  add_subdirectory(${poolcore_SOURCE_DIR}/src ${poolcore_BINARY_DIR} EXCLUDE_FROM_ALL)
endif()
