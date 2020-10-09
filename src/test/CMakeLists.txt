add_executable(tests main.cpp test.cpp)

target_link_libraries(tests CONAN_PKG::catch2 lib)
target_include_directories(tests PRIVATE ${CMAKE_CURRENT_SOURCE_DIR} ${CMAKE_SOURCE_DIR}/lib)

add_test(NAME tests
         COMMAND tests -r junit)
