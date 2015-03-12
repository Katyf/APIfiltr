class CommentSerializer < ActiveModel::Serializer
  attributes :body, :user, :id, :created_at

end
