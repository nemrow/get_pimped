class Doctor < ActiveRecord::Base
  attr_accessible :name

  has_many :questions
  belongs_to :team
end
