class User < ActiveRecord::Base
	has_many :teams, through: :memberships
	has_many :memberships

	has_many :leagues, through: :league_users
	has_many :league_users, dependent: :destroy

	has_many :participations
	has_many :inscriptions, through: :participations


	def f_name
		name + ' ' + lastname 
	end
end
