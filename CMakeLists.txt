PROJECT(quadprog++)

INCLUDE_DIRECTORIES( src )

set( CMAKE_DEBUG_POSTFIX "d" )
ADD_LIBRARY( QuadProg++ src/QuadProg++.cc src/Array.cc )
set_target_properties(QuadProg++ PROPERTIES PUBLIC_HEADER "src/Array.hh;src/QuadProg++.hh")
target_include_directories( QuadProg++ PUBLIC $<INSTALL_INTERFACE:include> )
INSTALL(TARGETS QuadProg++ EXPORT quadprog LIBRARY DESTINATION lib PUBLIC_HEADER DESTINATION include )
export( TARGETS QuadProg++ FILE quadprog.cmake )
INSTALL(EXPORT quadprog DESTINATION lib )
INSTALL(FILES quadprog-config.cmake DESTINATION lib )
