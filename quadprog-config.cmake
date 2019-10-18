get_filename_component( quadprog_CMAKE_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH )
if( NOT TARGET quadprog )
    include( "${quadprog_CMAKE_DIR}/quadprog.cmake" )
endif()
