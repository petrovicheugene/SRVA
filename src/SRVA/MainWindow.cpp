//==============================================
#include "MainWindow.h"
#include "ZCommonAnalyticalSettingsWidget.h"
#include "ZMeasurementDataWidget.h"

#include <QApplication>
#include <QDebug>
#include <QDockWidget>
#include <QMenu>
#include <QMenuBar>
#include <QMetaObject>
#include <QSettings>
//==============================================
MainWindow::MainWindow(QWidget* parent) : ZBaseMainWindow(parent)
{
    zh_createComponents();
    zh_createConnections();
    zh_createMenu();
    zh_restoreSettings();
}
//==============================================
MainWindow::~MainWindow() {}
//==============================================
void MainWindow::closeEvent(QCloseEvent* e)
{
    zh_saveSettings();
}
//==============================================
void MainWindow::zh_createMenu()
{
    QMenuBar* menubar = menuBar();
    menubar->setCursor(Qt::PointingHandCursor);

    // File
    QMenu* menu = menubar->addMenu(tr("File"));
    menu->setCursor(Qt::PointingHandCursor);
    zh_appendActionsToMenu(menu, MI_FILE);

    // Edit
    menu = menubar->addMenu(tr("Edit"));
    menu->setCursor(Qt::PointingHandCursor);
    zh_appendActionsToMenu(menu, MI_EDIT);

    // View
    menu = menubar->addMenu(tr("View"));
    menu->setCursor(Qt::PointingHandCursor);
    zh_appendActionsToMenu(menu, MI_VIEW);

    // Actions
    menu = menubar->addMenu(tr("Actions"));
    menu->setCursor(Qt::PointingHandCursor);
    zh_appendActionsToMenu(menu, MI_ACTIONS);

    // Help
    menu = menubar->addMenu(tr("Help"));
    menu->setCursor(Qt::PointingHandCursor);
    zh_appendActionsToMenu(menu, MI_HELP);
}
//==============================================
void MainWindow::zh_createComponents()
{
    // Measurement data
    zv_measurementDataWidget = new ZMeasurementDataWidget;
    QDockWidget* dock = new QDockWidget;
    dock->setWidget(zv_measurementDataWidget);
    dock->setObjectName("MeasurementDataWidget");
    addDockWidget(Qt::TopDockWidgetArea, dock);

    // Spectrum window and parameter widgets
    zv_commonAnalyticalSettingsWidget = new ZCommonAnalyticalSettingsWidget;
    dock = new QDockWidget;
    dock->setWidget(zv_commonAnalyticalSettingsWidget);
    dock->setObjectName("CommonAnalyticalSettingsWidget");
    addDockWidget(Qt::TopDockWidgetArea, dock);
}
//==============================================
void MainWindow::zh_createConnections() {}
//==============================================
