class Diet < ActiveRecord::Base
    has_many :meals
    has_many :recipes, :through => :meals , :source => :recipes
    validates :name, :presence => true, :uniqueness => true
end
