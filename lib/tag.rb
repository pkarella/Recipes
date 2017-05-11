class Tag < ActiveRecord::Base
  has_many :categories
  has_many :recipes, through: :categories
end
