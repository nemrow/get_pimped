class School < ActiveRecord::Base
  attr_accessible :name
  has_many :rotations
end