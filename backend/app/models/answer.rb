class Answer < ActiveRecord::Base
    belongs_to :question
    belongs_to :user

    def increase_likes
        self.likes += 1
    end 

end