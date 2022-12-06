class BusSerializer < ActiveModel::Serializer
  attributes :id, :seats, :number_plate, :driver_number
  has_many :trips
end
