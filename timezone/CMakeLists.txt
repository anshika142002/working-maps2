cmake_minimum_required(VERSION 3.16)

project(timezone VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_AUTOMOC ON)                   #must have for QML to work
set(CMAKE_AUTORCC ON)
find_package(Qt6 6.4 REQUIRED COMPONENTS Quick)

qt_standard_project_setup()

qt_add_executable(apptimezone
    main.cpp
    resc.qrc
)

qt_add_qml_module(apptimezone
    URI timezone
    VERSION 1.0
    QML_FILES Main.qml
    QML_FILES login.qml
    RESOURCES resc.qrc

)

set(resources_resource_files
"login.qml"
"mapbuild1.html"
"leafletjs/leaflet.js"
"leafletjs/leaflet.css"
"index.js"
)

qt_add_resources(apptimezone "resources"
PREFIX
"/"
FILES
${resources_resource_files}
)

#set(PROJECT_SOURCES
#        main.cpp
#        resc.qrc
#        QML_FILES Main.qml
#        QML_FILES login.qml
#)

set_target_properties(apptimezone PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.apptimezone
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(apptimezone
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS apptimezone
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
