class CommentSerializer < ActiveModel::Serializer
  attributes :body, :user, :id, :created_at, :post_id

end
