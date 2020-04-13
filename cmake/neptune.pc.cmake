prefix=@CMAKE_INSTALL_PREFIX@
exec_prefix=@CMAKE_INSTALL_PREFIX@
libdir=@CMAKE_INSTALL_PREFIX@/@CMAKE_INSTALL_LIBDIR@
includedir=@CMAKE_INSTALL_PREFIX@/@CMAKE_INSTALL_INCLUDEDIR@/@PROJECT_NAME@

Name: @PROJECT_NAME@
Description: @PROJECT_NAME@ c++ runtime
Version: @PROJECT_VERSION@
Requires:
Conflicts:
Libs: -L${libdir} -l@PROJECT_NAME@
Cflags: -I${includedir}
