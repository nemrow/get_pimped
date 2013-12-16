class Rotation < ActiveRecord::Base
  attr_accessible :name, :ip_address

  has_many :teams
  belongs_to :school
end
