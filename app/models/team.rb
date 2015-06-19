class Team < ActiveRecord::Base
	has_many :users, through: :memberships
	has_many :memberships, dependent: :destroy
  	has_many :inscriptions, dependent: :destroy
end
