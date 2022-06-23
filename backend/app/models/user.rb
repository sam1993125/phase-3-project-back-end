class User < ActiveRecord::Base
    has_many :answers
    belongs_to :question
    has_many :questions, through: :answers
end