class Genre < ActiveRecord::Base
  attr_accessible :name
  
  #Album
  has_many :albumGenre
  has_many :albums, :through => :albumGenre
  
end
