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

	def games_on_stage(stage)
		games_array = []
		stage.rounds.each do |r|
			r.games.select {|x| x.local_inscription_id == self.id || x.away_inscription_id == self.id}.each do |g|
				games_array << g
			end
		end

		games_array
	end

	def games_on_version(version)
		array = []
		version.stages.each do |s|
			games_on_stage(s).each do |g|
				array << g
			end
		end

		array.sort_by {|x| [x.round.stage_id, x.round_id]}
	end

	def points_on_game(game)
		goals_for = goals_for_on_game(game).count
		goals_against = goals_against_on_game(game).count

		if goals_for > goals_against
			return 3
		elsif goals_for == goals_against
			return 1
		elsif goals_against > goals_for
			return 0
		end
	end

	def goals_for_on_game(game)
		if game.local_inscription_id == self.id
			return game.local_goals
		elsif game.away_inscription_id == self.id
			return game.away_goals
		else
			return []
		end
	end

	def goals_against_on_game(game)
		if game.local_inscription_id == self.id
			return game.away_goals
		elsif game.away_inscription_id == self.id
			return game.local_goals
		else
			return []
		end
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
		rend = 0

		stage_games(stage).each do |object|
			g = object[:game]

			if g.played
				pg += 1
				points += points_on_game(g)

				case points_on_game(g)
					when 3
						wg += 1
					when 1
						tg += 1
					when 0
						lg += 1
				end

				goals_for += goals_for_on_game(g).count
				goals_against += goals_against_on_game(g).count

			end
		end

		rend = ((points * 100 )/(pg * 3)).to_i

		stads_hash = {
			:inscription => self,
			:points => points,
			:rend => rend,
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

	def points_on_stage(stage)
		points = 0
		stage.games.each do |g|
			points += points_on_game(g)
		end

		return points
	end

	def points_on_version(version)
		points = 0

		games_on_version(version).each do |g|
			points += points_on_game(g)
		end

		return points
	end

	def performance_on_version
		posible_points = games_on_version(version).select{|x| x.played == true}.count*3
		return (points_on_version(version)*100)/posible_points
	end
end
