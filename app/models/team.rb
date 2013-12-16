class Team < ActiveRecord::Base
  attr_accessible :name, :ip_address

  has_many :doctors
  belongs_to :rotation
end
