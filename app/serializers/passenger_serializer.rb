class PassengerSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :p_number
end
