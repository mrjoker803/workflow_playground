include(GNUInstallDirs)

install(
  TARGETS libzero
  EXPORT libzeroLibrary
  FILE_SET modules
  DESTINATION ${CMAKE_INSTALL_LIBDIR}/libzero/cxx/miu)

install(
  EXPORT libzeroLibrary
  DESTINATION ${CMAKE_INSTALL_LIBDIR}/libzero/cmake
  NAMESPACE libzero::)

install(FILES ${CMAKE_CURRENT_SOURCE_DIR}/cmake/libzeroConfig.cmake
        DESTINATION ${CMAKE_INSTALL_LIBDIR}/libzero/cmake)

if(UNIX)
  install(CODE "execute_process(COMMAND ldconfig)")
endif()

include(CPack)