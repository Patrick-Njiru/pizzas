puts "Seeding data..."

Restaurant.destroy_all
Pizza.destroy_all
RestaurantPizza.destroy_all

5.times{ Restaurant.create!(name: Faker::Restaurant.unique.name, address: Faker::Address.full_address)}

Pizza.create!([
    {name: 'Cheese', ingredients: "Dough, Tomato Sauce, Cheese"},
    {name: "Pepperoni", ingredients: "Dough, Tomato Sauce, Cheese, Pepperoni"},
    {name: 'Veggie', ingredients: "pepper, mushroom, eggplant, onion"},
    {name: 'Margherita', ingredients: "basil, fresh mozzarella, tomatoes"}
])

RestaurantPizza.create([
    {price: 5, pizza_id: 1, restaurant_id: 3},
    {price: 20, pizza_id: 3, restaurant_id: 1},
    {price: 10, pizza_id: 2, restaurant_id: 5},
    {price: 14, pizza_id: 4, restaurant_id: 1},
    {price: 14, pizza_id: 1, restaurant_id: 1},
    {price: 14, pizza_id: 3, restaurant_id: 4},
    {price: 14, pizza_id: 4, restaurant_id: 2}
])

puts "Seeding completed"