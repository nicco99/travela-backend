class BookingSerializer < ActiveModel::Serializer
  attributes :id, :status
  belongs_to :trip
  belongs_to :passenger
  has_many :reviews
end
