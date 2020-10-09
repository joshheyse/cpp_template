cmake_minimum_required(VERSION 3.18)

find_program(CCACHE_PROGRAM ccache)

if(CCACHE_PROGRAM)
    # Set up wrapper scripts
    set(C_LAUNCHER   "${CCACHE_PROGRAM}")
    set(CXX_LAUNCHER "${CCACHE_PROGRAM}")
    set(CCCACHE_EXPORTS "")

    foreach(option ${CCACHE_OPTIONS})
        set(CCCACHE_EXPORTS "${CCCACHE_EXPORTS}\nexport ${option}")
    endforeach()

    configure_file(launch-c.in   launch-c)
    configure_file(launch-cxx.in launch-cxx)

    execute_process(COMMAND chmod a+rx
                    "${CMAKE_CURRENT_BINARY_DIR}/launch-c"
                    "${CMAKE_CURRENT_BINARY_DIR}/launch-cxx"
    )
endif()
