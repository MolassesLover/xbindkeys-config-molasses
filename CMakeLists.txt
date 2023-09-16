cmake_minimum_required(VERSION 3.0)
project(xbindkeys_config)

find_package(GTK2 REQUIRED gtk)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

set(HEADER_FILES
	include/menu.h
	include/middle.h
	include/speedc.h
	include/version.h
)

set(SOURCE_FILES
	src/menu.c
	src/middle.c
	src/speedc.c
	src/xbindkeys_config.c
)

add_executable(xbindkeys-config-gtk ${HEADER_FILES} ${SOURCE_FILES})
set_target_properties(xbindkeys-config-gtk PROPERTIES LINKER_LANGUAGE C)

target_include_directories(xbindkeys-config-gtk
	PUBLIC
	${GTK2_INCLUDE_DIRS} 
	include
)

target_link_libraries(xbindkeys-config-gtk
	${GTK2_LIBRARIES}
)
