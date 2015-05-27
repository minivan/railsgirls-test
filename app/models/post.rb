class Post < ActiveRecord::Base
  has_attachment :image
  belongs_to :user  
  paginates_per 4
end
