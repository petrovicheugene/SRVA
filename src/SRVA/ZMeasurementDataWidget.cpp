//==============================================
#include "ZMeasurementDataWidget.h"

#include <QApplication>
#include <QHBoxLayout>
#include <QLabel>
#include <QTableView>
#include <QVBoxLayout>
//==============================================
ZMeasurementDataWidget::ZMeasurementDataWidget(QWidget* parent)
    : QWidget(parent)
{
    zh_createComponents();
    zh_createConnections();
}
//==============================================
void ZMeasurementDataWidget::zh_createComponents()
{
    QVBoxLayout* mainLayout = new QVBoxLayout;
    setLayout(mainLayout);

    QLabel* label = new QLabel;
    label->setText(zh_formatCaption("Measurement data"));
    mainLayout->addWidget(label);

    zv_tableView = new QTableView;
    mainLayout->addWidget(zv_tableView);
}
//==============================================
void ZMeasurementDataWidget::zh_createConnections() {}
//==============================================
QString ZMeasurementDataWidget::zh_formatCaption(const QString& caption)
{
    QString captionTemplate = qApp->property("CaptionTemplate").toString();
    if (captionTemplate.isEmpty())
    {
        return caption;
    }

    return QString(captionTemplate).arg(caption);
}
//==============================================
