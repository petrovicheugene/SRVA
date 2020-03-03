//==============================================
#include "ZMeasurementDataWidget.h"

#include <QHBoxLayout>
#include <QLabel>
#include <QTableView>
#include <QVBoxLayout>
//==============================================
ZMeasurementDataWidget::ZMeasurementDataWidget(QString captionTemplate,
                                               QWidget* parent)
    : QWidget(parent)
{
    zv_captionTemplate = captionTemplate;
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
    if (zv_captionTemplate.isEmpty())
    {
        return caption;
    }

    return QString(zv_captionTemplate).arg(caption);
}
//==============================================
