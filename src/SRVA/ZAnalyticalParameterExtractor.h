//==============================================
// Class extracts intensity of a specrum in the spcifyed windows
// and calculates the analytical parameter by means of the equation specifyed
// in the class.

//==============================================
#ifndef ZANALYTICALPARAMETEREXTRACTOR_H
#define ZANALYTICALPARAMETEREXTRACTOR_H
//==============================================
#include <QObject>
//==============================================
class ZAnalyticalParameterExtractor : public QObject
{
    Q_OBJECT
public:
    explicit ZAnalyticalParameterExtractor(QObject* parent = nullptr);

    double zp_extract(const QList<quint64>& data, bool* ok = nullptr);
    QString zp_lastError() const;

signals:

private:
    // VARS
    QString zv_errorString;

    // FUNCS
};
//==============================================
#endif // ZANALYTICALPARAMETEREXTRACTOR_H
