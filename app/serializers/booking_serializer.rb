class BookingSerializer < ActiveModel::Serializer
  attributes :id, :trip_id, :passenger_id, :departure, :status
end
