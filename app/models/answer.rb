class Answer < ActiveRecord::Base
  attr_accessible :content, :ip_address

  belongs_to :question
end
