class BookingSerializer < ActiveModel::Serializer
  attributes :id, :status, :passenger
  belongs_to :trip
  belongs_to :passenger
  has_many :reviews
end
