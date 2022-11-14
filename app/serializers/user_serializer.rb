class UserSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :user_name, :password_digest, :email
end
