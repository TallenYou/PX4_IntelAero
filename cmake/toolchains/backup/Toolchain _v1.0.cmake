# A Simple Cmake Cross-Compilation Base on Yocto SDK
# Author: Tallen(B&B New Technology Research Enthusiastic Buddy)
# Created on: Aug 29, 2017

# defines:
#
# NM
# OBJCOPY
# LD
# CXX_COMPILER
# C_COMPILER
# CMAKE_SYSTEM_NAME
# CMAKE_SYSTEM_VERSION
# LINKER_FLAGS
# CMAKE_EXE_LINKER_FLAGS
# CMAKE_FIND_ROOT_PATH
# CMAKE_FIND_ROOT_PATH_MODE_PROGRAM
# CMAKE_FIND_ROOT_PATH_MODE_LIBRARY
# CMAKE_FIND_ROOT_PATH_MODE_INCLUDE



include(CMakeForceCompiler)

# this one is important
set(CMAKE_SYSYTEM_NAME Linux)

set(CMAKE_SYSTEM_PROCESSOR core2)


#POKY  SYSROOT ABSOULTE PATH
set(SYSROOTS /media/tallent/bfac384d-e4c3-466f-81c8-9f554111bfe0/tallent/poky/2.1/sysroots)

#cmake add the option --sysroot=/media/tallent/bfac384d-e4c3-466f-81c8-9f554111bfe0/tallent/poky/2.1/sysroots/core2-64-poky-linux
set(CMAKE_SYSROOT ${SYSROOTS}/core2-64-poky-linux)

#Toolchain Prefix
set(TOOLCHAIN_PREFIX ${SYSROOTS}/x86_64-pokysdk-linux/usr/bin/x86_64-poky-linux/x86_64-poky-linux-)

set(CMAKE_PREFIX_PATH ${CMAKE_SYSROOT}/usr/lib/cmake)

#set(LIBRARY_PATH /media/tallent/bfac384d-e4c3-466f-81c8-9f554111bfe0/tallent/poky/2.1/sysroots/core2-64-poky-linux/usr/lib/)


#C Compiler & C++ Compiler
#switch off the compiler check with the marcos from the module CMakeForceCompiler
#set(CMAKE_C_COMPILER ${TOOLCHAIN_PREFIX}gcc)
find_program(CMAKE_C_COMPILER x86_64-poky-linux-gcc
	PATHS ${SYSROOTS}/x86_64-pokysdk-linux/usr/bin/x86_64-poky-linux
	NO_DEFAULT_PATH
	)
if(NOT CMAKE_C_COMPILER)
	message(FATAL_ERROR "could not find x86_64-poky-linux-gcc compiler ")
endif()
cmake_force_c_compiler(${CMAKE_C_COMPILER} GNU)


#set(CMAKE_CXX_COMPILER ${TOOLCHAIN_PREFIX}g++)
find_program(CMAKE_CXX_COMPILER x86_64-poky-linux-g++
	PATHS ${SYSROOTS}/x86_64-pokysdk-linux/usr/bin/x86_64-poky-linux
	NO_DEFAULT_PATH
	)
if(NOT CMAKE_CXX_COMPILER)
	message(FATAL_ERROR "could not find x86_64-poky-linux-g++ compiler")
endif()
cmake_force_cxx_compiler(${CMAKE_CXX_COMPILER} GNU)


# compiler tools 
foreach(tool objcopy nm ld)
	string(TOUPPER ${tool} TOOL)
	find_program(${TOOL} x86_64-poky-linux-${tool}
		PATHS ${SYSROOTS}/x86_64-pokysdk-linux/usr/bin/x86_64-poky-linux
 		NO_DEFAULT_PATH
		)
	if(NOT ${TOOL})
		message(FATAL_ERROR "could not find x86_64-poky-linux-${tool}")
	endif()
endforeach()

# os tools
foreach(tool echo grep rm mkdir nm cp touch make unzip)
	string(TOUPPER ${tool} TOOL)
	find_program(${TOOL} ${tool})
	if(NOT ${TOOL})
		message(FATAL_ERROR "could not find ${TOOL}")
	endif()
endforeach()


set(LINKER_FLAGS "-Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed")
set(CMAKE_EXE_LINKER_FLAGS ${LINKER_FLAGS})


set(COMPILER_FLAGS "-m64 -march=core2 -mtune=core2 -msse3 -mfpmath=sse --sysroot=/media/tallent/bfac384d-e4c3-466f-81c8-9f554111bfe0/tallent/poky/2.1/sysroots/core2-64-poky-linux ")
add_definitions("${COMPILER_FLAGS}")



set(C_CXX_FLAGS " -O2 -pipe -g -feliminate-unused-debug-types -fdebug-prefix-map=/home/pokybuild/yocto-autobuilder/yocto-worker/nightly-x86-64/build/build/tmp/work/x86_64-nativesdk-pokysdk-linux/meta-environment-qemux86-64/1.0-r8=/usr/src/debug/meta-environment-qemux86-64/1.0-r8 -fdebug-prefix-map=/home/pokybuild/yocto-autobuilder/yocto-worker/nightly-x86-64/build/build/tmp/sysroots/x86_64-linux= -fdebug-prefix-map=/home/pokybuild/yocto-autobuilder/yocto-worker/nightly-x86-64/build/build/tmp/sysroots/x86_64-nativesdk-pokysdk-linux= ")
set(LDFLAGS "-Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed")


unset(CMAKE_C_FLAGS CACHE)
set(CMAKE_C_FLAGS "${C_CXX_FLAGS}" CACHE STRING "" FORCE)
unset(CMAKE_CXX_FLAGS CACHE)
set(CMAKE_CXX_FLAGS "${C_CXX_FLAGS}" CACHE STRING "" FORCE)
unset(CMAKE_C_LINKER_FLAGS CACHE)
set(CMAKE_C_LINKER_FLAGS "${LDFLAGS}" CACHE STRING "" FORCE)
#set(CMAKE_CXX_LINKER_FLAGS "${C_FLAGS}")


#set(CMAKE_INSTALL_RPATH "${CMAKE_SYSROOT}/usr/lib")
#set(CMAKE_INSTALL_RPATH_USE_LINK_PATH TRUE)


# where is the target environment

set(CMAKE_FIND_ROOT_PATH ${CMAKE_SYSROOT})
#set(CMAKE_FIND_ROOT_PATH  get_file_component(${CMAKE_C_COMPILER} PATH))

# search for programs in the build host directories
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
# for libraries and headers in the target directories
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
#set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)


