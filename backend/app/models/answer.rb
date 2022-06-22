class Answer < ActiveRecord::Base
    belongs_to :question
    has_many :likes, :dependent => :destroy
end