class Designer < ApplicationRecord
  has_and_belongs_to_many :category
  has_many :items
  has_many :users
end
