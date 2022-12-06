class TripSerializer < ActiveModel::Serializer
  attributes :id , :departure[0..15]
belongs_to :bus
belongs_to :route
end
