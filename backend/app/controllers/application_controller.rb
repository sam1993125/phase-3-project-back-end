class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here

  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/questions" do
    all_questions = Question.all
    all_questions.to_json 
  end

  get "/answers" do
    all_answers = Answer.all
    all_answers.to_json 
  end

  get "/answers/:id" do
    answers = Answer.find(params[:id])
    answers.to_json
  end
  
  get "/questions/:id" do
    questions = Question.find(params[:id])
    questions.to_json(include: {answers:{ include: :user} })
  end

  post "/questions" do
    create_question = Question.create(
      question: params[:question]
    )
    create_question.to_json
  end

  post "/answers" do
    create_answer = Answer.create(
      answer: params[:answer],
      likes: params[:likes],
      user_id: params[:user_id],
      question_id: params[:question_id]
    )
    create_answer.to_json
  end

  #PATCH

  patch "/answers/:id" do
    answer = Answer.find(params[:id])
    answer.update(
      answer: params[:answer],
      likes: params[:likes],
      user_id: params[:user_id],
      question_id: params[:question_id] 
    )
    answer.to_json
  end

  #DELETE
  delete '/questions/:id' do
    question = Question.find(params[:id])
    question.destroy
    question.to_json
  end

end