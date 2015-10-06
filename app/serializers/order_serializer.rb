class OrderSerializer < ActiveModel::Serializer
  attributes :id, :name, :order_date, :status
end
