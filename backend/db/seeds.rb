puts "🌱 Seeding spices..."

# Seed your database here
Answer.create(id: 1, answer: "This is good advice", question_id: 1,likes: 2,user_id: 1, )
Answer.create(id: 2,answer: "This is really good advice", question_id: 2,likes: 3,user_id: 2)
Answer.create(id: 3,answer: "This is AMAZING advice", question_id: 3,likes: 4,user_id: 3)
Answer.create(id: 4,answer: "This is the BEST advice", question_id: 4,likes: 5,user_id: 4)
Answer.create(id: 5,answer: "This is stupid advice", question_id: 5,likes: 6,user_id: 5)

Question.create(question: "How should you load the dishwahs",id: 1)
Question.create(question: "Dunkind or Starbucks?", id: 2)
Question.create(question: "Homeschool or Public School?", id: 3)
Question.create(question: "Mcdonalds or Burger King?", id: 4)
Question.create(question: "DO you like your friends boyfriend?", id: 5)

User.create(name: "John", id: 1)
User.create(name: "Yixin", id: 2)
User.create(name: "Em",  id: 3)
User.create(name: "Sally",  id: 4)
User.create(name: "Harry",  id: 5)


puts "✅ Done seeding!"

#money
#whether or not to go to the doctor
#childcare
#advice on someone's partner