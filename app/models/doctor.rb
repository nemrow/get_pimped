class Doctor < ActiveRecord::Base
  attr_accessible :name, :ip_address

  has_many :questions
  belongs_to :team
end
