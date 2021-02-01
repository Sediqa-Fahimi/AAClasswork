# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Todo.destroy_all
todo1 = Todo.create( title: "Do the dishes", body: "ASAP", done: false )
todo2 = Todo.create( title: "Finish homework", body: "Tonight", done: false )
todo3 = Todo.create( title: "Walk dog", body: "Tomorrow", done: false )

$.ajax({ method: 'GET', url: '/api/todos'}).then(todos => console.log(todos),error => console.log(error));