# `Pizzas and Restaurants`
By Patrick Njiru

## Description
A ruby on rails `api` application managing a database about various pizzas and restaurants and the relationsip between them. A restaurant has many pizzas and a pizza also has many restaurants (a many-to-many relationship). A join table is present to establish this relationship.

## Setup and Installation
## Requirements
- Laptop or computer.
- Internet access.

## Instructions
Fork and clone this repo into your machine. Open the application with your code editor, open the terminal and run: 
```console
    $ bundle install
    $ rails db:migrate db:seed
```

To open the server, run `rails s`. You can now test out the available methods on the console by running `rails c` or on `postman`.

## Technologies Used
- Ruby
- Ruby on Rails
## License

MIT License
Copyright (c) [2022] [Patrick Njiru]

A short and simple permissive license with conditions only requiring preservation of copyright and license notices. Licensed works, modifications, and larger works may be distributed under different terms and without source code.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
