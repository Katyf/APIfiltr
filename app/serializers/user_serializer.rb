class UserSerializer < ActiveModel::Serializer
  attributes :email, :username, :token

end
