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


  

end
