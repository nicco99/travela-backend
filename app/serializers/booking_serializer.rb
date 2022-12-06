class BookingSerializer < ActiveModel::Serializer
  attributes :id, :status
  belongs_to :trip
  belongs_to :passenger
end
