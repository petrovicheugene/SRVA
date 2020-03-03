//==============================================
#ifndef MAINWINDOW_H
#define MAINWINDOW_H
//==============================================
#include "ZBaseMainWindow/ZBaseMainWindow.h"
//==============================================
class ZMeasurementDataWidget;
class
    //==============================================
    class MainWindow : public ZBaseMainWindow
{
    Q_OBJECT

public:
    MainWindow(QWidget *parent = nullptr);
    ~MainWindow();

private:
    // VARS
    ZMeasurementDataWidget* zv_measurementDataWidget;

    // FUNCS

    void zh_createMenu();
    void zh_createComponents();
    void zh_createConnections();
};
//==============================================
#endif // MAINWINDOW_H
