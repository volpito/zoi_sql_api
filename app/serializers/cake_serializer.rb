class CakeSerializer < ActiveModel::Serializer
  attributes :name, :description, :image, :available
  belongs_to :category
end
