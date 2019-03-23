# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#


users = [
  {
    "_id": "5c8f7450f22c02061c3e3ad6",
    "isActive": true,
    "picture": "http://placehold.it/32x32",
    "age": 33,
    "name": {
      "first": "Marshall",
      "last": "Bright"
    },
    "company": "ESSENSIA",
    "email": "marshall.bright@essensia.name",
    "password": "aute"
  },
  {
    "_id": "5c8f74504ec86706813d2440",
    "isActive": true,
    "picture": "http://placehold.it/32x32",
    "age": 33,
    "name": {
      "first": "Frye",
      "last": "Norton"
    },
    "company": "IMAGINART",
    "email": "frye.norton@imaginart.biz",
    "password": "occaecat"
  },
  {
    "_id": "5c8f74506c3a5bb0eb1eaabd",
    "isActive": true,
    "picture": "http://placehold.it/32x32",
    "age": 34,
    "name": {
      "first": "Kane",
      "last": "Tyler"
    },
    "company": "ECRATER",
    "email": "kane.tyler@ecrater.tv",
    "password": "aliqua"
  },
  {
    "_id": "5c8f74504360c4def666854f",
    "isActive": false,
    "picture": "http://placehold.it/32x32",
    "age": 40,
    "name": {
      "first": "Moreno",
      "last": "Williams"
    },
    "company": "ZOLAVO",
    "email": "moreno.williams@zolavo.io",
    "password": "aliquip"
  },
  {
    "_id": "5c8f7450c434f0b56fee9ebb",
    "isActive": true,
    "picture": "http://placehold.it/32x32",
    "age": 32,
    "name": {
      "first": "Kellie",
      "last": "Chapman"
    },
    "company": "ZOUNDS",
    "email": "kellie.chapman@zounds.com",
    "password": "sdfsdfsdf"
  }
]

products = [
  {
    "id": 1,
    "title": "Apple",
    "image_url": "http://json.hackmeup.io/images/apple.png",
    "price": 25
  },
  {
    "id": 2,
    "title": "Apricot",
    "image_url": "http://json.hackmeup.io/images/apricot.png",
    "price": 10
  },
  {
    "id": 3,
    "title": "Cherry",
    "image_url": "http://json.hackmeup.io/images/cherry.png",
    "price": 22
  },
  {
    "id": 4,
    "title": "Lemon",
    "image_url": "http://json.hackmeup.io/images/lemon.png",
    "price": 15
  },
  {
    "id": 5,
    "title": "Orange",
    "image_url": "http://json.hackmeup.io/images/orange.png",
    "price": 20
  },

  {
    "id": 6,
    "title": "Pear",
    "image_url": "http://json.hackmeup.io/images/pear.png",
    "price": 22
  },

  {
    "id": 7,
    "title": "Pineapple",
    "image_url": "http://json.hackmeup.io/images/pineapple.png",
    "price": 12
  },

  {
    "id": 8,
    "title": "Strawberry",
    "image_url": "http://json.hackmeup.io/images/strawberry.png",
    "price": 18
  },
  {
    "id": 9,
    "title": "Watermelon",
    "image_url": "http://json.hackmeup.io/images/watermelon.png",
    "price": 15
  }
]

User.delete_all
users.each do |user|
  User.create(
    code: user[:_id],
    active: user[:isActive],
    picture_url: user[:picture],
    age: user[:age],
    first_name: user[:first_name],
    last_name: user[:last_name],
    company_name: user[:company],
    email_address: user[:email],
    password: user[:password]
  )
end

Product.delete_all
products.each do |product|
  Product.create(
    code: product[:id],
    name: product[:title],
    image_url: product[:image_url],
    price: product[:price]
  )
end
