//==============================================
#include "ZMeasurementDataModel.h"
//==============================================
ZMeasurementDataModel::ZMeasurementDataModel(QObject* parent)
    : QAbstractTableModel(parent)
{}
//==============================================
Qt::ItemFlags ZMeasurementDataModel::flags(const QModelIndex& index) const
{
    Qt::ItemFlags flags;
    return flags;
}
//==============================================
int ZMeasurementDataModel::rowCount(const QModelIndex& parent) const
{
    return 0;
}
//==============================================
int ZMeasurementDataModel::columnCount(const QModelIndex& parent) const
{
    return 0;
}
//==============================================
QVariant ZMeasurementDataModel::data(const QModelIndex& index, int role) const
{
    return QVariant();
}
//==============================================
bool ZMeasurementDataModel::setData(const QModelIndex& index,
                                    const QVariant& value,
                                    int role)
{
    return false;
}
//==============================================
QVariant ZMeasurementDataModel::headerData(int section,
                                           Qt::Orientation orientation,
                                           int role) const
{
    return QVariant();
}
//==============================================
bool ZMeasurementDataModel::setHeaderData(int section,
                                          Qt::Orientation orientation,
                                          const QVariant& value,
                                          int role)
{
    return false;
}
//==============================================
