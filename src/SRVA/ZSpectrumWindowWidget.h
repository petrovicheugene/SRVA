//==============================================
// The class represents the spectrum windoows and the means
// for adding, deleting and editing them
//==============================================
#ifndef ZSPECTRUMWINDOWWIDGET_H
#define ZSPECTRUMWINDOWWIDGET_H
//==============================================
#include <QWidget>
//==============================================
class QTableView;
//==============================================
class ZSpectrumWindowWidget : public QWidget
{
    Q_OBJECT
public:
    explicit ZSpectrumWindowWidget(QWidget* parent = nullptr);

signals:

private:
    // VARS
    QTableView* zv_tableView;

    // FUNCS
    void zh_createComponents();
    void zh_createConnections();
    QString zh_formatCaption(const QString& caption);
};
//==============================================
#endif // ZSPECTRUMWINDOWWIDGET_H
