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

#AERO(Yocto)交叉工具链地址
 
set(AERO_TOOLCHAIN_DIR /media/tallent/bfac384d-e4c3-466f-81c8-9f554111bfe0/tallent/poky/2.1/sysroots)

# this one is important 系统平台需要自己设置，没有系统就设置成Generic
set(CMAKE_SYSTEM_NAME Generic)

#this one not so much
set(CMAKE_SYSTEM_VERSION 1)

# specify the cross compiler C编译器
find_program(C_COMPILER x86_64-poky-linux-gcc
	PATHS ${AERO_TOOLCHAIN_DIR}/x86_64-pokysdk-linux/usr/bin/x86_64-poky-linux
	NO_DEFAULT_PATH
	)

if(NOT C_COMPILER)
	message(FATAL_ERROR "could not find x86_64-poky-linux-gcc compiler ")
endif()
cmake_force_c_compiler(${C_COMPILER} GNU)

# specify the cross compiler CXX编译器
find_program(CXX_COMPILER x86_64-poky-linux-g++
	PATHS ${AERO_TOOLCHAIN_DIR}/x86_64-pokysdk-linux/usr/bin/x86_64-poky-linux
	NO_DEFAULT_PATH
	)

if(NOT CXX_COMPILER)
	message(FATAL_ERROR "could not find x86_64-poky-linux-g++ compiler")
endif()
cmake_force_cxx_compiler(${CXX_COMPILER} GNU)

+

# compiler tools 编译工具
foreach(tool objcopy nm ld)
	string(TOUPPER ${tool} TOOL)
	find_program(${TOOL} x86_64-poky-linux-${tool}
		PATHS ${AERO_TOOLCHAIN_DIR}/x86_64-pokysdk-linux/usr/bin/x86_64-poky-linux
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

add_definitions(
	-D __DF_RPI
	)

set(LINKER_FLAGS "-Wl,-gc-sections")
set(CMAKE_EXE_LINKER_FLAGS ${LINKER_FLAGS})
set(CMAKE_C_FLAGS ${C_FLAGS})
set(CMAKE_CXX_LINKER_FLAGS ${C_FLAGS})

# where is the target environment
set(CMAKE_FIND_ROOT_PATH  get_file_component(${C_COMPILER} PATH))

# search for programs in the build host directories
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
# for libraries and headers in the target directories
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
