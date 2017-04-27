class Item < ApplicationRecord
  belongs_to :designer
  belongs_to :category
end
