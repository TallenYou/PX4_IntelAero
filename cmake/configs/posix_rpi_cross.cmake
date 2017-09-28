#include(configs/posix_rpi_common)

#if("$ENV{RPI_USE_CLANG}" STREQUAL "1")
#	set(CMAKE_TOOLCHAIN_FILE ${PX4_SOURCE_DIR}/cmake/toolchains/Toolchain-arm-linux-gnueabihf-raspbian-clang.cmake)
#else()
#	set(CMAKE_TOOLCHAIN_FILE ${PX4_SOURCE_DIR}/cmake/toolchains/Toolchain-arm-linux-gnueabihf-raspbian.cmake)
#endif()


#set(CMAKE_PROGRAM_PATH
#	"${RPI_TOOLCHAIN_DIR}/gcc-linaro-arm-linux-gnueabihf-raspbian/bin"
#	${CMAKE_PROGRAM_PATH}
#)

include(configs/posix_rpi_common)

set(toolchain /media/tallent/bfac384d-e4c3-466f-81c8-9f554111bfe0/tallent/poky/2.1/sysroots/x86_64-pokysdk-linux/usr/bin/x86_64-poky-linux )

#set(CMAKE_TOOLCHAIN_FILE ${PX4_SOURCE_DIR}/cmake/toolchains/Toolchain-x86_64-poky-linux.cmake)
set(CMAKE_TOOLCHAIN_FILE ${PX4_SOURCE_DIR}/cmake/toolchains/Toolchain.cmake)


set(CMAKE_PROGRAM_PATH
        ${toolchain}
        ${CMAKE_PROGRAM_PATH}
)
