class Comment < ActiveRecord::Base
  belongs_to :post

  has_many :childcomments, class_name: 'Comment', foreign_key: 'parentcomment_id'
  belongs_to :parentcomment
end
