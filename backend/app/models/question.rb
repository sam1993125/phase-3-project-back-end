class Question < ActiveRecord::Base
    has_many :answers, :dependent => :destroy
    has_many :likes, through: :answers
end