class AlbumLike < ActiveRecord::Base
  attr_accessible :album_id, :user_id
  
  belongs_to :album
  belongs_to :user
end
