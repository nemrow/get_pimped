class Team < ActiveRecord::Base
  attr_accessible :name

  has_many :doctors
  belongs_to :rotation
end
