class Category < ApplicationRecord
  has_many :furnitures, dependent: :destroy
end
