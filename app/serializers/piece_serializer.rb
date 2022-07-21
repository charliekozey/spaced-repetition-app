class PieceSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :rating, :seller_rating, :price, :is_selected
end
