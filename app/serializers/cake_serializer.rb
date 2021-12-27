class CakeSerializer < ActiveModel::Serializer
  attributes :name, :description, :image
  belongs_to :category
end
