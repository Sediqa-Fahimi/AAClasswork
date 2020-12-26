# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
user1 = User.create(username: 'steve-johnson')
user2 = User.create(username: 'natalie.O')
user3 = User.create(username: 'carlossss')
user4 = User.create(username: 'Tyyyyyyy')

Poll.destroy_all
poll1 = Poll.create(title: 'History', author_id: user1.id)
poll2 = Poll.create(title: 'Tech', author_id: user1.id)

Question.destroy_all
question1 = Question.create(text: 'Who is your favorite US president?', poll_id: poll1.id)
question2 = Question.create(text: 'What does RAM stands for?', poll_id: poll2.id)
question3 = Question.create(text: 'What is most low level programming language?', poll_id: poll2.id)

AnswerChoice.destroy_all
answer_choice1 = AnswerChoice.create(text: 'Barak Obama', question_id: question1.id)
answer_choice2 = AnswerChoice.create(text: 'All of them', question_id: question1.id)
answer_choice3 = AnswerChoice.create(text: 'Nobody', question_id: question1.id)
answer_choice4 = AnswerChoice.create(text: 'Random Acting Memory', question_id: question2.id)
answer_choice5 = AnswerChoice.create(text: 'Random Access Memory', question_id: question2.id)
answer_choice6 = AnswerChoice.create(text: 'Dont know', question_id: question2.id)
answer_choice7 = AnswerChoice.create(text: 'Java', question_id: question3.id)
answer_choice8 = AnswerChoice.create(text: 'C', question_id: question3.id)
answer_choice9 = AnswerChoice.create(text: 'Machine language', question_id: question3.id)

Response.destroy_all
response1 = Response.create(user_id: user2.id, answer_choice_id: answer_choice1.id)
response2 = Response.create(user_id: user3.id, answer_choice_id: answer_choice1.id)
response3 = Response.create(user_id: user4.id, answer_choice_id: answer_choice3.id)
response4 = Response.create(user_id: user4.id, answer_choice_id: answer_choice5.id)
response5 = Response.create(user_id: user3.id, answer_choice_id: answer_choice6.id)
response6 = Response.create(user_id: user2.id, answer_choice_id: answer_choice9.id)