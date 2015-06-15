class Stage < ActiveRecord::Base
	belongs_to :version
	has_many :groups
	has_many :rounds

	def generate_fixture
		rounds.each(&:destroy)

		groups.each do |g|
			g.generate_fixture
		end
	end
end
