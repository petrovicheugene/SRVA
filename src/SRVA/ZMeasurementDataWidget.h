//==============================================
#ifndef ZMEASUREMENTDATAWIDGET_H
#define ZMEASUREMENTDATAWIDGET_H
//==============================================
#include <QWidget>
//==============================================
class QTableView;
//==============================================
class ZMeasurementDataWidget : public QWidget
{
    Q_OBJECT
public:
    explicit ZMeasurementDataWidget(QString captionTemplate = QString(),
                                    QWidget* parent = nullptr);

signals:

private:
    // VARS
    QTableView* zv_tableView;
    QString zv_captionTemplate;

    // FUNCS
    void zh_createComponents();
    void zh_createConnections();
    QString zh_formatCaption(const QString& caption);
};
//==============================================
#endif // ZMEASUREMENTDATAWIDGET_H
