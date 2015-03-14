class PostSerializer < ActiveModel::Serializer
  attributes :id, :message, :created_at, :comments, :images
end
