# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
things = [
  {
    name: "thing 1",
    description: "description 1"
  },

  {
    name: "thing 2",
    description: "description 2"
  },

  {
    name: "thing 3",
    description: "description 3"
  },

  {
    name: "thing 4",
    description: "description 4"
  },

  {
    name: "thing 5",
    description: "description 5"
  }
]

Thing.create(things)
