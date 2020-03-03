//==============================================
#include "ZAnalyticalParameterExtractor.h"
//==============================================
ZAnalyticalParameterExtractor::ZAnalyticalParameterExtractor(QObject* parent) : QObject(parent) {}
//==============================================
double ZAnalyticalParameterExtractor::zp_extract(const QList<quint64>& data, bool* ok)
{
    zv_errorString.clear();
    bool res = false;

    if (ok)
    {
        *ok = res;
    }
    return 0.0;
}
//==============================================
QString ZAnalyticalParameterExtractor::zp_lastError() const
{
    return zv_errorString;
}
//==============================================
