##! Dependancies
include(FetchContent)

set(DOCTEST_WITH_MAIN_IN_STATIC_LIB OFF CACHE BOOL "Override option" FORCE)
FetchContent_Declare(
        doctest
        URL https://github.com/onqtam/doctest/archive/2.3.3.tar.gz
)

FetchContent_Declare(
        entt
        URL https://github.com/skypjack/entt/archive/master.zip
)

FetchContent_Declare(
        doom_st
        URL https://github.com/doom/strong_type/archive/1.0.2.tar.gz
)


set(EXPECTED_ENABLE_TESTS OFF CACHE BOOL "Override option" FORCE)
FetchContent_Declare(
        expected
        URL https://github.com/TartanLlama/expected/archive/master.zip
)

FetchContent_Declare(
        range-v3
        URL https://github.com/ericniebler/range-v3/archive/master.zip
)

FetchContent_Declare(
        refl-cpp
        URL https://github.com/veselink1/refl-cpp/archive/master.zip
)

FetchContent_MakeAvailable(doctest entt doom_st expected range-v3 refl-cpp)

add_library(refl-cpp INTERFACE)
target_include_directories(refl-cpp INTERFACE ${refl-cpp_SOURCE_DIR})
add_library(antara::refl-cpp ALIAS refl-cpp)