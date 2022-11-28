ActiveRecord::Schema[7.0].define(version: 2022_11_28_055558) do
  create_table "pizzas", force: :cascade do |t|
    t.string "name"
    t.string "ingredients"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "restaurant_pizzas", force: :cascade do |t|
    t.integer "price"
    t.integer "restaurant_id", null: false
    t.integer "pizza_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pizza_id"], name: "index_restaurant_pizzas_on_pizza_id"
    t.index ["restaurant_id"], name: "index_restaurant_pizzas_on_restaurant_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "restaurant_pizzas", "pizzas"
  add_foreign_key "restaurant_pizzas", "restaurants"
end
