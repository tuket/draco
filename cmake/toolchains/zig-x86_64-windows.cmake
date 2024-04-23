set(CMAKE_SYSTEM_NAME "Windows")

set(ZIG_FLAG_TARGET -target x86_64-windows)
set(CMAKE_C_COMPILER "zig" cc ${ZIG_FLAG_TARGET} "-O3")
set(CMAKE_CXX_COMPILER "zig" c++ ${ZIG_FLAG_TARGET} "-O3")

if(WIN32)
    set(SCRIPT_SUFFIX ".cmd")
else()
    set(SCRIPT_SUFFIX ".sh")
endif()
# This is working (thanks to Simon for finding this trick)
set(CMAKE_AR "${CMAKE_CURRENT_LIST_DIR}/zig-ar${SCRIPT_SUFFIX}")
set(CMAKE_RANLIB "${CMAKE_CURRENT_LIST_DIR}/zig-ranlib${SCRIPT_SUFFIX}")
#set(CMAKE_AR "zig" "ar")
#set(CMAKE_RANLIB "zig" "ranlib")

set(CMAKE_SIZEOF_VOID_P 8)