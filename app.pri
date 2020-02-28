#------------------------------------------------- 
DESTDIR = $${BIN_PATH}/ 
linux-g++: QMAKE_LFLAGS += -Wl,--rpath=\\\$\$ORIGIN/../../lib.$${OS_SUFFIX}/ 

CONFIG(debug, debug|release) { 
    TARGET=$${TARGET}-$${VERSION}.$${BUILD_FLAG} 
} else { 
    TARGET=$${TARGET} 

    isEmpty(QMAKE_POST_LINK){ 
    QMAKE_POST_LINK += $$(QTDIR)/bin/windeployqt $${BIN_PATH} 
    }else{ 
    } 

    copyFiles($${TRANSLATIONS_PATH}/*.qm, $${BIN_PATH}/translations) 
} 

