class CategorySerializer < ActiveModel::Serializer
  attributes :name, :description
  has_many :cakes
end
