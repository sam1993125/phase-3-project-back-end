class Question < ActiveRecord::Base
    has_many :answers
    has_one :user
end