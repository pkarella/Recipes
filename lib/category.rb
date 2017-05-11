class Category < ActiveRecord::Base
  belongs_to :recipes
  belongs_to :tags
end
