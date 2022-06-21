class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here

  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/question" do
    all_questions = Question.all
    all_questions.to_json 
  end
  
  get "/question/:id" do
    questions = Question.find(params[:id])
    questions.to_json(include: { answers: { include: :likes} })
  end

  post "/question" do
    create_question = Question.create(
      question: params[:question]
    )
    create_question.to_json
  end

  post "/answer" do
    create_answer = Answer.create(
      answer: params[:answer],
      question_id: params[:question_id]
    )
    create_answer.to_json
  end

end
