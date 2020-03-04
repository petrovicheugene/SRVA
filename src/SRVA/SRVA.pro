QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

#PRO VARS
TARGET = SRVA
#Application version
#RC_ICONS = "ZImages/SRVLab-8.ico"

VER_MAJ=0
VER_MIN=0
VER_PAT=0
VER_BUILD=b

QMAKE_TARGET_PRODUCT="SRV A"
QMAKE_TARGET_DESCRIPTION="SRV additive method"
QMAKE_TARGET_COMPANY="TechnoAnalyt"
QMAKE_TARGET_COPYRIGHT="Copyright © $${QMAKE_TARGET_COMPANY} Ltd. 2020.  All rights reserved."
COMPANY_URL=tehnoanalit.com

#-------------------------------------------------
# in common.pri will be defined VERSION, TARGET, DEBUG SETTINGS
#  global APP DEFINES
#-------------------------------------------------
include( ../../common.pri )
include( ../../app.pri )
#END


# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    ../common/ZBaseMainWindow/ZBaseMainWindow.cpp \
    ../common/ZBaseMainWindow/ZHelpBrowser.cpp \
    ../common/ZBaseMainWindow/ZTranslatorManager.cpp \
    ZAbstractPlotterDataManager.cpp \
    ZAbstractSpectrum.cpp \
    ZAbstractSpectrumAuxData.cpp \
    ZAnalyticalParameterExtractor.cpp \
    ZAnalyticalParameterWidget.cpp \
    ZCalibrationWindow.cpp \
    ZCommonAnalyticalSettingsWidget.cpp \
    ZEnergyCalibrationLine.cpp \
    ZGeneral.cpp \
    ZMeasurementDataModel.cpp \
    ZMeasurementDataWidget.cpp \
    ZPlotter/ZChartPointGraphicsItem.cpp \
    ZPlotter/ZChartPointOptions.cpp \
    ZPlotter/ZDefaultRectGraphicsItem.cpp \
    ZPlotter/ZEnergyLineGraphicsItem.cpp \
    ZPlotter/ZHorizontalDashBoard.cpp \
    ZPlotter/ZPlotGraphicsScene.cpp \
    ZPlotter/ZPlotGraphicsView.cpp \
    ZPlotter/ZPlotter.cpp \
    ZPlotter/ZRulerToolGraphicsItem.cpp \
    ZPlotter/ZRulerWidget.cpp \
    ZPlotter/ZRulersAndGridManager.cpp \
    ZPlotter/ZSpectrumGraphicsItem.cpp \
    ZPlotter/ZTextGraphicsItem.cpp \
    ZPlotter/ZVerticalLineGraphicsItem.cpp \
    ZPlotter/ZVisibilityPointF.cpp \
    ZPlotter/ZWindowGraphicsItem.cpp \
    ZSpeAuxData.cpp \
    ZSpeSpectrum.cpp \
    ZSpectrumWindowWidget.cpp \
    main.cpp \
    MainWindow.cpp

HEADERS += \
    ../common/ZBaseMainWindow/ZBaseMainWindow.h \
    ../common/ZBaseMainWindow/ZHelpBrowser.h \
    ../common/ZBaseMainWindow/ZTranslatorManager.h \
    MainWindow.h \
    ZAbstractPlotterDataManager.h \
    ZAbstractSpectrum.h \
    ZAbstractSpectrumAuxData.h \
    ZAnalyticalParameterExtractor.h \
    ZAnalyticalParameterWidget.h \
    ZCalibrationWindow.h \
    ZCommonAnalyticalSettingsWidget.h \
    ZEnergyCalibrationLine.h \
    ZGeneral.h \
    ZMeasurementDataModel.h \
    ZMeasurementDataWidget.h \
    ZPlotter/ZChartPointGraphicsItem.h \
    ZPlotter/ZChartPointOptions.h \
    ZPlotter/ZDefaultRectGraphicsItem.h \
    ZPlotter/ZEnergyLineGraphicsItem.h \
    ZPlotter/ZGraphicsItemUserTypes.h \
    ZPlotter/ZHorizontalDashBoard.h \
    ZPlotter/ZPlotGraphicsScene.h \
    ZPlotter/ZPlotGraphicsView.h \
    ZPlotter/ZPlotter.h \
    ZPlotter/ZPlotterDefaulVariables.h \
    ZPlotter/ZRulerToolGraphicsItem.h \
    ZPlotter/ZRulerWidget.h \
    ZPlotter/ZRulersAndGridManager.h \
    ZPlotter/ZSpectrumGraphicsItem.h \
    ZPlotter/ZTextGraphicsItem.h \
    ZPlotter/ZVerticalLineGraphicsItem.h \
    ZPlotter/ZVisibilityPointF.h \
    ZPlotter/ZWindowGraphicsItem.h \
    ZSpeAuxData.h \
    ZSpeSpectrum.h \
    ZSpectrumWindowWidget.h

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

RESOURCES += \
    ../common/ZBaseMainWindow/HelpBrowserResources.qrc

DISTFILES += \
    ../common/ZBaseMainWindow/blue_home.ico \
    ../common/ZBaseMainWindow/blue_home.png \
    ../common/ZBaseMainWindow/blue_left.ico \
    ../common/ZBaseMainWindow/blue_left.png \
    ../common/ZBaseMainWindow/blue_right.ico \
    ../common/ZBaseMainWindow/blue_right.png \
    ../common/ZBaseMainWindow/editclear.png \
    ../common/ZBaseMainWindow/green_home.ico \
    ../common/ZBaseMainWindow/green_home.png \
    ../common/ZBaseMainWindow/green_left.ico \
    ../common/ZBaseMainWindow/green_left.png \
    ../common/ZBaseMainWindow/green_right.ico \
    ../common/ZBaseMainWindow/green_right.png \
    model-classes.qmodel
