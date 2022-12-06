class TripSerializer < ActiveModel::Serializer
  attributes :id, :bus_id, :route_id, :departure
belongs_to :bus
belongs_to :route
end
