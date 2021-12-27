class Cake < ApplicationRecord
  belongs_to :category

  validates :name, :category_id, :presence => true
end
