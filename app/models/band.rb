class Band < ActiveRecord::Base
  attr_accessible :biography, :image_url, :name
  
  #User
  has_many :userBand
  has_many :musicians, :through => :userBand, :source => :user
  
end
