class Category < ActiveRecord::Base
  attr_accessible :name
  
  #Album
  has_many :albumCategory
  has_many :albums, :through => :albumCategory
  
  #Band
  has_many :categoryBand
  has_many :albums, :through => :categoryBand
  
end
