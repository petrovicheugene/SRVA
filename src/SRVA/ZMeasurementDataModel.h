//==============================================
#ifndef ZMEASUREMENTDATAMODEL_H
#define ZMEASUREMENTDATAMODEL_H
//==============================================
#include <QAbstractTableModel>
//==============================================
class ZMeasurementDataModel : public QAbstractTableModel
{
    Q_OBJECT
public:
    explicit ZMeasurementDataModel(QObject* parent = nullptr);

    Qt::ItemFlags flags(const QModelIndex& index) const override;
    int rowCount(const QModelIndex& parent = QModelIndex()) const override;
    int columnCount(const QModelIndex& parent = QModelIndex()) const override;
    QVariant data(const QModelIndex& index,
                  int role = Qt::DisplayRole) const override;
    bool setData(const QModelIndex& index,
                 const QVariant& value,
                 int role = Qt::EditRole) override;
    QVariant headerData(int section,
                        Qt::Orientation orientation,
                        int role = Qt::DisplayRole) const override;
    bool setHeaderData(int section,
                       Qt::Orientation orientation,
                       const QVariant& value,
                       int role = Qt::EditRole) override;
signals:
};
//==============================================
#endif // ZMEASUREMENTDATAMODEL_H
