class Recipe < ActiveRecord::Base
  has_many(:ingredients)
  has_and_belongs_to_many(:tag)
end
