class PassengerSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :p_number, :password_digest
end
