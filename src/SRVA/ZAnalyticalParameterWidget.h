//==============================================
// The class represents the equation string and controls for editing it
//==============================================
#ifndef ZANALYTICALPARAMETERWIDGET_H
#define ZANALYTICALPARAMETERWIDGET_H
//==============================================
#include <QWidget>
//==============================================
class ZAnalyticalParameterWidget : public QWidget
{
    Q_OBJECT
public:
    explicit ZAnalyticalParameterWidget(QWidget *parent = nullptr);

signals:

private:
    //VARS
    QString zv_captionTemplate;
};
//==============================================
#endif // ZANALYTICALPARAMETERWIDGET_H
