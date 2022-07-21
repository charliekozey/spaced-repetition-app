class DecoratorSerializer < ActiveModel::Serializer
  attributes :id, :display_name, :username, :email, :password_digest
end
