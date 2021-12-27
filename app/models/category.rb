class Category < ApplicationRecord
  has_many :cakes

  validates :name, :presence => true
end
