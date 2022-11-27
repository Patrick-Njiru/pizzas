ActiveRecord::Schema[7.0].define(version: 2022_11_27_163032) do
  create_table "pizzas", force: :cascade do |t|
    t.string "name"
    t.string "ingredients"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "restaurant_pizzas", force: :cascade do |t|
    t.integer "price"
    t.integer "pizza_id"
    t.integer "restaurant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
