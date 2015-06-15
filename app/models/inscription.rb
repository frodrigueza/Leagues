class Inscription < ActiveRecord::Base
	belongs_to :version
	belongs_to :team

	has_many :participations
	has_many :users, through: :participations

	has_many :group_inscriptions, dependent: :destroy
	has_many :groups, through: :group_inscriptions

	def stages
		version.stages
	end

	def stage_games(stage)
		array = []
		stage.rounds.each do |r|
			r.games.each do |g|
				if g.local_inscription_id == self.id || g.away_inscription_id == self.id
					array << { round: r, game: g }
				end
			end
		end

		array
	end

	def games(stage)
		games_array = []
		stage.rounds.each do |r|
			r.games.select {|x| x.local_inscription_id == self.id || x.away_inscription_id == self.id}.each do |g|
				games_array << g
			end
		end

		games_array
	end

	def stads(stage)
		points = 0
		pg = 0
		wg = 0
		tg = 0
		lg = 0
		goals_for = 0
		goals_against = 0
		dif = 0

		games(stage).each do |g|
			local_goals = g.local_goals
			away_goals = g.away_goals


			if g.played
				pg += 1
				if g.local_inscription_id == self.id

					goals_for += local_goals.count
					goals_against += away_goals.count

					if local_goals.count > away_goals.count
						points += 3
						wg += 1
					elsif local_goals.count == away_goals.count
						points += 1
						tg += 1
					else
						lg += 1
					end
				elsif g.away_inscription_id == self.id

					goals_for += away_goals.count
					goals_against += local_goals.count

					if away_goals.count > local_goals.count
						points += 3
						wg += 1
					elsif away_goals.count == local_goals.count
						points += 1
						tg += 1
					else
						lg += 1
					end
				end
			end
		end

		stads_hash = {
			:inscription => self,
			:points => points,
			:pg => pg,
			:wg => wg,
			:tg => tg,
			:lg => lg,
			:goals_for => goals_for,
			:goals_against => goals_against,
			:dif => goals_for - goals_against
		}

		return stads_hash
	end
end
