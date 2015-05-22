class Post < ActiveRecord::Base
  has_attachment :image
  belongs_to :user  
end
