# `Pizzas and Restaurants`

## Description
A ruby on rails `api` application managing a database about various pizzas and restaurants and the relationsip between them. A restaurant has many pizzas and a pizza also has many restaurants (a many-to-many relationship). A join table is present to establish this relationship.

## Setup
## Requirements
- Laptop
- Internet connection

## Instructions
Fork and clone this repo into your machine. Open the application with your code editor, open the terminal and run: 
```console
    $ bundle install
    $ rails db:migrate db:seed
```

To open the server, run `rails s`. You can now test out the available methods on the console by running `rails c` or on `postman`.
