puts "Seeding data..."

Restaurant.destroy_all
Pizza.destroy_all

5.times{ Restaurant.create!(name: Faker::Restaurant.unique.name, address: Faker::Address.full_address)}

Pizza.create!([
    {name: 'Cheese', ingredients: "Dough, Tomato Sauce, Cheese"},
    {name: "Pepperoni", ingredients: "Dough, Tomato Sauce, Cheese, Pepperoni"},
    {name: 'Veggie', ingredients: "pepper, mushroom, eggplant, onion"},
    {name: 'Margherita', ingredients: "basil, fresh mozzarella, tomatoes"}
])

puts "Seeding completed"