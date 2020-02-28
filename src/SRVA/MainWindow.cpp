//==============================================
#include "MainWindow.h"

#include <QDockWidget>
#include <QMenu>
#include <QMenuBar>
#include <QSettings>
//==============================================
MainWindow::MainWindow(QWidget *parent) : ZBaseMainWindow(parent)
{
    zh_createComponents();
    zh_createConnections();
    zh_createMenu();
    zh_restoreSettings();
}
//==============================================
MainWindow::~MainWindow()
{
    zh_saveSettings();
}
//==============================================
//void MainWindow::zh_saveSettings() const
//{
//    QSettings settings;
//    settings.setValue(zv_appGeometryString, saveGeometry());
//    settings.setValue(zv_appStateString, saveState());
//}
////==============================================
//void MainWindow::zh_restoreSettings()
//{
//    QSettings settings;
//    restoreGeometry(settings.value(zv_appGeometryString).toByteArray());
//    restoreState(settings.value(zv_appStateString).toByteArray());
//}
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
void MainWindow::zh_createComponents() {}
//==============================================
void MainWindow::zh_createConnections() {}
//==============================================
