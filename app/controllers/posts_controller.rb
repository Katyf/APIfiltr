class Post < ActiveRecord::Base
  has_many :comments
  has_many :images

  validates :message, presence: true, uniqueness: true
end
