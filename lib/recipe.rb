class Recipe < ActiveRecord::Base
  has_many :categories
  has_many :tags, through: :categories
  has_many :ingredients
end
