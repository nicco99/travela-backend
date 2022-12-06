class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :comment, :rating, :booking_id

  belongs_to :booking
end
