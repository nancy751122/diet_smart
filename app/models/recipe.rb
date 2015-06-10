class Recipe < ActiveRecord::Base
#mount_uploader :image, ImageUploader
has_many :meals
has_many :recipe_ingredients
has_many :ingredients, :through => :recipe_ingredients
validates :name, :presence => true, :uniqueness => true
end
