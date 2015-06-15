class Game < ActiveRecord::Base
	belongs_to :round
	has_many :cards, dependent: :destroy
	has_many :goals, dependent: :destroy

	def local_inscription
		Inscription.find(local_inscription_id)
	end

	def away_inscription
		Inscription.find(away_inscription_id)
	end

	def local_team
		local_inscription.team
	end

	def away_team
		away_inscription.team
	end

	def local_goals
		self.goals.select {|g| local_inscription.participations.include?(g.participation)}
	end

	def away_goals
		self.goals.select {|g| away_inscription.participations.include?(g.participation)}
	end

	def f_local_goals
		if played
			local_goals.count
		else
			'-'
		end
	end

	def f_away_goals
		if played
			away_goals.count
		else
			'-'
		end
	end



	# que se juegue el partido aleatoriamente
	def random_play
		self.played = true

		local_participations = local_inscription.participations
		away_participations = away_inscription.participations

		# goals
		(1..3).to_a.sample.times do |n|
			Goal.create(game_id: self.id, participation_id: local_participations.sample.id)
		end
		# yellow_cards
		Card.create(game_id: self.id, participation_id: local_participations.sample.id, card_type: 1)
		# red_cards
		if (0..3).to_a.sample == 0
			Card.create(game_id: self.id, participation_id: local_participations.sample.id, card_type: 2)	
		end

		# goals
		(1..3).to_a.sample.times do |n|
			Goal.create(game_id: self.id, participation_id: away_participations.sample.id)
		end
		# yellow_cards
		Card.create(game_id: self.id, participation_id: away_participations.sample.id, card_type: 1)
		# red_cards
		if (0..3).to_a.sample == 0
			Card.create(game_id: self.id, participation_id: away_participations.sample.id, card_type: 2)	
		end

		self.save
	end


end
