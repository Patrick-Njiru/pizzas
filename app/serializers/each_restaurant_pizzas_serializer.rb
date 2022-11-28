class EachRestaurantPizzasSerializer < ActiveModel::Serializer
    has_many :pizzas
    attributes :id, :name, :address
end