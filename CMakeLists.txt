PROJECT(quadprog++)


INCLUDE_DIRECTORIES(
 src 
)

ADD_LIBRARY( QuadProg++ src/QuadProg++.cc src/Array.cc )
set_target_properties(QuadProg++ PROPERTIES PUBLIC_HEADER "src/Array.hh;src/QuadProg++.hh")
INSTALL(TARGETS QuadProg++
        LIBRARY DESTINATION lib
        PUBLIC_HEADER DESTINATION include
)
