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
