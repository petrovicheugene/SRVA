mkdir bin
cd bin
mkdir debug
mkdir release
cd..
mkdir build
cd build
mkdir debug
mkdir release
cd..

mkdir import
mkdir export
mkdir lib.linux
mkdir lib.win

mkdir src
cd src
mkdir common
cd.. 

mkdir test

#app.pri
@echo #------------------------------------------------- > app.pri
@echo DESTDIR = $${BIN_PATH}/ >> app.pri
@echo linux-g++: QMAKE_LFLAGS += -Wl,--rpath=\\\$\$ORIGIN/../../lib.$${OS_SUFFIX}/ >> app.pri
@echo.>> app.pri
@echo CONFIG(debug, debug^|release) { >> app.pri
@echo     TARGET=$${TARGET}-$${VERSION}.$${BUILD_FLAG} >> app.pri
@echo } else { >> app.pri
@echo     TARGET=$${TARGET} >> app.pri
@echo.>> app.pri
@echo     isEmpty(QMAKE_POST_LINK){ >> app.pri
@echo     QMAKE_POST_LINK += $$(QTDIR)/bin/windeployqt $${BIN_PATH} >> app.pri
@echo     }else{ >> app.pri
@echo     QMAKE_POST_LINK += & $$(QTDIR)/bin/windeployqt $${BIN_PATH} >> app.pri
@echo     } >> app.pri
@echo.>> app.pri
@echo     copyFiles($${TRANSLATIONS_PATH}/*.qm, $${BIN_PATH}/translations) >> app.pri
@echo } >> app.pri
@echo.>> app.pri

#lib.pri
@echo #------------------------------------------------- > lib.pri
@echo DESTDIR = $${LIBS_PATH}/ >> lib.pri
@echo.>> lib.pri
@echo win32: { >> lib.pri
@echo DLLDESTDIR = $${BIN_PATH}/ >> lib.pri
@echo CONFIG += skip_target_version_ext >> lib.pri
@echo } >> lib.pri
@echo.>> lib.pri
@echo unix: { >> lib.pri
@echo CONFIG += unversioned_libname >> lib.pri
@echo } >> lib.pri
@echo.>> lib.pri
@echo  copyFiles($${TRANSLATIONS_PATH}/*.qm, $${LIBS_TRANSLATIONS_PATH}) >> lib.pri
@echo.>> lib.pri

#common.pri
@echo #------------------------------------------------- > common.pri
@echo PROJECT_ROOT_PATH = $${PWD}/ >> common.pri
@echo.>> common.pri
@echo win32: OS_SUFFIX = win32 >> common.pri
@echo linux-g++: OS_SUFFIX = linux >> common.pri
@echo.>> common.pri
@echo CONFIG += c++11 >> common.pri
@echo CONFIG += c++14 >> common.pri
@echo CONFIG += c++17 >> common.pri
@echo.>> common.pri
@echo VERSION=$${VER_MAJ}.$${VER_MIN}.$${VER_PAT} >> common.pri
@echo.>> common.pri
@echo CONFIG(debug, debug^|release) { >> common.pri
@echo     BUILD_FLAG = debug >> common.pri
@echo     LIB_SUFFIX = d >> common.pri
@echo } else { >> common.pri
@echo     BUILD_FLAG = release >> common.pri
@echo } >> common.pri
@echo.>> common.pri
@echo #Define the preprocessor macro to get the application version in the application. >> common.pri
@echo DEFINES += APP_DISPLAY_NAME=\"\\\"$${QMAKE_TARGET_PRODUCT}\\\"\" >> common.pri
@echo DEFINES += APP_PRODUCT=\"\\\"$${TARGET}\\\"\" >> common.pri
@echo DEFINES += APP_VERSION=\"\\\"$${VERSION}.$${VER_RELEASE}\\\"\" >> common.pri
@echo DEFINES += APP_COMPANY=\"\\\"$${QMAKE_TARGET_COMPANY}\\\"\" >> common.pri
@echo DEFINES += APP_COMPANY_URL=\"\\\"$${COMPANY_URL}\\\"\" >> common.pri
@echo DEFINES += APP_COPYRIGHT=\"\\\"$${QMAKE_TARGET_COPYRIGHT}\\\"\" >> common.pri
@echo DEFINES += APP_ICON=\"\\\"$${RC_ICONS}\\\"\" >> common.pri
@echo.>> common.pri
@echo #DEBUG SETTINGS >> common.pri
@echo CONFIG(release, debug^|release):DEFINES += QT_NO_DEBUG_OUTPUT >> common.pri
@echo #by default defined: in Debug mode QT_DEBUG, in Release mode QT_NO_DEBUG >> common.pri
@echo.>> common.pri
@echo SRC_PATH = $${PROJECT_ROOT_PATH}/src/ >> common.pri
@echo LIBS_PATH = $${PROJECT_ROOT_PATH}/lib.$${OS_SUFFIX}/ >> common.pri
@echo EXPORT_PATH = $${PROJECT_ROOT_PATH}/export/ >> common.pri
@echo IMPORT_PATH = $${PROJECT_ROOT_PATH}/import/ >> common.pri
@echo COMMON_PATH = $${SRC_PATH}/common/ >> common.pri
@echo TRANSLATIONS_PATH = $${PROJECT_ROOT_PATH}/translations/$${TARGET}/ >> common.pri
@echo BIN_PATH = $${PROJECT_ROOT_PATH}/bin/$${BUILD_FLAG}/$${TARGET}/ >> common.pri
@echo mkpath($${SRC_PATH}) >> common.pri
@echo mkpath($${LIBS_PATH}) >> common.pri
@echo mkpath($${EXPORT_PATH}) >> common.pri
@echo mkpath($${IMPORT_PATH}) >> common.pri
@echo mkpath($${COMMON_PATH}) >> common.pri
@echo mkpath($${TRANSLATIONS_PATH}) >> common.pri
@echo mkpath($${BIN_PATH}) >> common.pri
@echo.>> common.pri
@echo BUILD_PATH = $${PROJECT_ROOT_PATH}/build/$${BUILD_FLAG}/$${TARGET}/ >> common.pri
@echo RCC_DIR = $${BUILD_PATH}/rcc/ >> common.pri
@echo UI_DIR = $${BUILD_PATH}/ui/ >> common.pri
@echo MOC_DIR = $${BUILD_PATH}/moc/ >> common.pri
@echo OBJECTS_DIR = $${BUILD_PATH}/obj/ >> common.pri
@echo mkpath($${BUILD_PATH}) >> common.pri
@echo mkpath($${RCC_DIR}) >> common.pri
@echo mkpath($${UI_DIR}) >> common.pri
@echo mkpath($${MOC_DIR}) >> common.pri
@echo mkpath($${OBJECTS_DIR}) >> common.pri
@echo.>> common.pri
@echo LIBS += -L$${LIBS_PATH}/ >> common.pri
@echo INCLUDEPATH += $${EXPORT_PATH}/ >> common.pri
@echo INCLUDEPATH += $${IMPORT_PATH}/ >> common.pri
@echo INCLUDEPATH += $${COMMON_PATH}/ >> common.pri
@echo.>> common.pri
@echo QMAKE_CXXFLAGS_WARN_ON += -Wno-unused-parameter >> common.pri
@echo.>> common.pri
@echo # FUNCS >> common.pri
@echo # creates translation file names for languages from LANGUAGES variable >> common.pri
@echo defineReplace(prependAll) { >> common.pri
@echo  for(a,$$1):result += $$2$${a}$$3 >> common.pri
@echo  return($$result) >> common.pri
@echo } >> common.pri
@echo.>> common.pri
@echo # Copies the given files to the given directory >> common.pri
@echo defineTest(copyFiles) { >> common.pri
@echo     files = $$1 >> common.pri
@echo     DDIR = $$2 >> common.pri
@echo.>> common.pri
@echo     for(FILE, files) { >> common.pri
@echo         # Replace slashes in paths with backslashes for Windows >> common.pri
@echo         win32:FILE ~= s,/,\\,g >> common.pri
@echo         win32:DDIR ~= s,/,\\,g >> common.pri
@echo.>> common.pri
@echo         isEmpty(QMAKE_POST_LINK){ >> common.pri
@echo         QMAKE_POST_LINK += $$QMAKE_COPY $$quote($$FILE) $$quote($$DDIR) $$escape_expand(\\n\\t) >> common.pri
@echo         }else{ >> common.pri
@echo         QMAKE_POST_LINK += & $$QMAKE_COPY $$quote($$FILE) $$quote($$DDIR) $$escape_expand(\\n\\t) >> common.pri
@echo         } >> common.pri
@echo     } >> common.pri
@echo     export(QMAKE_POST_LINK) >> common.pri
@echo } >> common.pri
@echo.>> common.pri
@echo TRANSLATIONS = $$prependAll(LANGUAGES, $${TRANSLATIONS_PATH}/$${TARGET}_, .ts) >> common.pri
@echo QMAKE_PRE_LINK += $$(QTDIR)/bin/lupdate-pro $${_PRO_FILE_} >> common.pri
@echo.>> common.pri
@echo CONFIG(release, debug^|release) { >> common.pri
@echo     QMAKE_PRE_LINK += & $$(QTDIR)/bin/lrelease-pro $${_PRO_FILE_} >> common.pri
@echo } >> common.pri
@echo.>> common.pri
@echo linux-g++: QMAKE_CXXFLAGS += -std=c++11 >> common.pri
@echo linux-g++: QMAKE_CXXFLAGS += -std=c++14 >> common.pri
@echo linux-g++: QMAKE_CXXFLAGS += -std=c++17 >> common.pri
@echo.>> common.pri

#README.md
@echo # README # > README.md
@echo.>> README.md
@echo This README would normally document whatever steps are necessary to get your application up and running. >> README.md
@echo.>> README.md
@echo ### What is this repository for? ### >> README.md
@echo.>> README.md
@echo * Quick summary >> README.md
@echo * Version >> README.md
@echo * [Learn Markdown](https://bitbucket.org/tutorials/markdowndemo) >> README.md
@echo.>> README.md
@echo ### How do I get set up? ### >> README.md
@echo.>> README.md
@echo * Summary of set up >> README.md
@echo * Configuration >> README.md
@echo * Dependencies >> README.md
@echo * Database configuration >> README.md
@echo * How to run tests >> README.md
@echo * Deployment instructions >> README.md
@echo.>> README.md
@echo ### Contribution guidelines ### >> README.md
@echo.>> README.md
@echo * Writing tests >> README.md
@echo * Code review >> README.md
@echo * Other guidelines >> README.md
@echo.>> README.md
@echo ### Who do I talk to? ### >> README.md
@echo.>> README.md
@echo * Repo owner or admin >> README.md
@echo * Other community or team contact >> README.md
@echo.>> README.md

#gitignore
@echo *~ > .gitignore
@echo *.autosave >> .gitignore
@echo *.a >> .gitignore
@echo *.core >> .gitignore
@echo *.moc >> .gitignore
@echo *.o >> .gitignore
@echo *.obj >> .gitignore
@echo *.orig >> .gitignore
@echo *.rej >> .gitignore
@echo *.so >> .gitignore
@echo *.so.* >> .gitignore
@echo *_pch.h.cpp >> .gitignore
@echo *_resource.rc >> .gitignore
@echo *.qm >> .gitignore
@echo .#* >> .gitignore
@echo *.*# >> .gitignore
@echo core >> .gitignore
@echo !core/ >> .gitignore
@echo tags >> .gitignore
@echo .DS_Store >> .gitignore
@echo .directory >> .gitignore
@echo *.debug >> .gitignore
@echo Makefile* >> .gitignore
@echo *.prl >> .gitignore
@echo *.app >> .gitignore
@echo moc_*.cpp >> .gitignore
@echo ui_*.h >> .gitignore
@echo qrc_*.cpp >> .gitignore
@echo Thumbs.db >> .gitignore
@echo *.res >> .gitignore
@echo *.rc >> .gitignore
@echo /.qmake.cache >> .gitignore
@echo /.qmake.stash >> .gitignore
@echo temp/*.* >> .gitignore
@echo temp/ >> .gitignore
@echo # qtcreator generated files >> .gitignore
@echo *.pro.user* >> .gitignore
@echo.>> .gitignore
@echo # xemacs temporary files >> .gitignore
@echo *.flc >> .gitignore
@echo.>> .gitignore
@echo # Vim temporary files >> .gitignore
@echo .*.swp >> .gitignore
@echo.>> .gitignore
@echo # Visual Studio generated files >> .gitignore
@echo *.ib_pdb_index >> .gitignore
@echo *.idb >> .gitignore
@echo *.ilk >> .gitignore
@echo *.pdb >> .gitignore
@echo *.sln >> .gitignore
@echo *.suo >> .gitignore
@echo *.vcproj >> .gitignore
@echo *vcproj.*.*.user >> .gitignore
@echo *.ncb >> .gitignore
@echo *.sdf >> .gitignore
@echo *.opensdf >> .gitignore
@echo *.vcxproj >> .gitignore
@echo *vcxproj.* >> .gitignore
@echo.>> .gitignore
@echo # MinGW generated files >> .gitignore
@echo *.Debug >> .gitignore
@echo *.Release >> .gitignore
@echo.>> .gitignore
@echo # Python byte code >> .gitignore
@echo *.pyc >> .gitignore
@echo.>> .gitignore
@echo # Binaries >> .gitignore
@echo # -------- >> .gitignore
@echo *.dll >> .gitignore
@echo *.exe >> .gitignore
@echo.>> .gitignore