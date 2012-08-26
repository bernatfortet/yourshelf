class CategoriesBand < ActiveRecord::Base
  attr_accessible :band_id, :category_id
  
  belongs_to :band
  belongs_to :category
  
end
