class VendorSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :email, :phone_number, :url, :status
end
