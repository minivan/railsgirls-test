class Post < ActiveRecord::Base
  has_attachment :image
  belongs_to :user  
  paginates_per 10
end
