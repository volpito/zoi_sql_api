class CakeSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :image, :available
  belongs_to :category
end
