class RouteSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :start, :destination
end
