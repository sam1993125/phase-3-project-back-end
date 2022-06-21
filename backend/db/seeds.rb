puts "🌱 Seeding spices..."

# Seed your database here
Answer.create(answer: "This is good advice", question_id: 1)
Answer.create(answer: "This is really good advice", question_id: 2)
Answer.create(answer: "This is AMAZING advice", question_id: 3)
Answer.create(answer: "This is the BEST advice", question_id: 4)
Answer.create(answer: "This is stupid advice", question_id: 5)

Question.create(question: "How should you load the dishwahs")
Question.create(question: "Dunkind or Starbucks?")
Question.create(question: "Homeschool or Public School?")
Question.create(question: "Mcdonalds or Burger King?")
Question.create(question: "DO you like your friends boyfriend?")

Like.create(like: 5, answer_id: 1)
Like.create(like: 20, answer_id: 2)
Like.create(like: 50, answer_id: 3)
Like.create(like: 10000, answer_id: 4)
Like.create(like: 2, answer_id: 5)


puts "✅ Done seeding!"

#money
#whether or not to go to the doctor
#childcare
#advice on someone's partner