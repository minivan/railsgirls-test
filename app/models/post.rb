class Post < ActiveRecord::Base
  has_attachment :image
  belongs_to :user
  has_many :comments
  paginates_per 10
end
