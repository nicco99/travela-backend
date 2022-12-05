class TripSerializer < ActiveModel::Serializer
  attributes :id, :bus_id, :route_id, :departure

end
