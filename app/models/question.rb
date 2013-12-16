class Question < ActiveRecord::Base
  attr_accessible :content, :ip_address

  has_many :answers
  belongs_to :doctor
end
