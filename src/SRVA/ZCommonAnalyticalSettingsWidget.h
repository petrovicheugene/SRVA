//==============================================
// The class aimed to hold together two widgets: ZSpectrumWindowWidget
// and ZAnalyticalParameterWidget
//==============================================
#ifndef ZANALYTICALSETTINGS_H
#define ZANALYTICALSETTINGS_H
//==============================================
#include <QWidget>

//==============================================
class ZAnalyticalParameterWidget;
class ZSpectrumWindowWidget;
//==============================================
class ZCommonAnalyticalSettingsWidget : public QWidget
{
    Q_OBJECT
public:
    explicit ZCommonAnalyticalSettingsWidget(QWidget* parent = nullptr);

signals:

};
//==============================================
#endif // ZANALYTICALSETTINGS_H
