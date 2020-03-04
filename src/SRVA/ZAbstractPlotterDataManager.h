//==============================================
#ifndef ZPLOTTERDATAMANAGER_H
#define ZPLOTTERDATAMANAGER_H
//==============================================
#include <QObject>
//==============================================
class ZAbstractPlotterDataManager : public QObject
{
    Q_OBJECT
public:
    explicit ZAbstractPlotterDataManager(QObject* parent = nullptr);

    virtual void zp_setCurrentSpectrum(qint64 zv_relatedObjectId) = 0;

signals:

};
//==============================================
#endif // ZPLOTTERDATAMANAGER_H
