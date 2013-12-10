class Rotation < ActiveRecord::Base
  attr_accessible :name

  has_many :teams
  belongs_to :school
end
