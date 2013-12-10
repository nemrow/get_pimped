class Question < ActiveRecord::Base
  attr_accessible :content

  has_many :answers
  belongs_to :doctor
end
