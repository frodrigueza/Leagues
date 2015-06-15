class Group < ActiveRecord::Base
	belongs_to :stage
	has_many :group_inscriptions, dependent: :destroy
	has_many :inscriptions, through: :group_inscriptions

	def generate_fixture
		games = []
		stage_id = self.stage.id
		teams_for_games = Rubin.new(inscriptions)
		teams_for_games.each_matchup do |home, away, round_num|
			if(home && away)
				g = Game.new(local_inscription_id: home.id, away_inscription_id: away.id)
				Round.find_or_create_by(name:round_num.to_i, stage_id: stage_id).games << g
				g.save
				games << g
			end
		end
	end

	def stads
		stads_array = []
		self.inscriptions.each do |i|
			stads_array << i.stads(stage)
		end

		stads_array = stads_array.sort_by{ |stad| [stad[:points], stad[:dif], stad[:wg]] }.reverse
	end
end
