# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "removing previous cats"
Cat.destroy_all

Cat.create(name: "Sennacy", color: "black", birth_date: "2/1/2020", sex: "F", description: "very healthy")
Cat.create(name: "Mittens", color: "white", birth_date: "2020/1/20", sex: "M", description: "meows very loudly")
Cat.create(name: "Gizmo", color: "yellow", birth_date: "2020/5/16", sex: "F", description: "eats a lot of food")
