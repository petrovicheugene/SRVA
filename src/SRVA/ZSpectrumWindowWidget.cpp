//==============================================
#include "ZSpectrumWindowWidget.h"

#include <QApplication>
#include <QHBoxLayout>
#include <QLabel>
#include <QTableView>
#include <QVBoxLayout>
//==============================================
ZSpectrumWindowWidget::ZSpectrumWindowWidget(QWidget* parent) : QWidget(parent)
{
    zh_createComponents();
    zh_createConnections();
}
//==============================================
void ZSpectrumWindowWidget::zh_createComponents()
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
void ZSpectrumWindowWidget::zh_createConnections() {}
//==============================================
QString ZSpectrumWindowWidget::zh_formatCaption(const QString& caption)
{
    QString captionTemplate = qApp->property("CaptionTemplate").toString();
    if (captionTemplate.isEmpty())
    {
        return caption;
    }

    return QString(captionTemplate).arg(caption);
}
//==============================================
