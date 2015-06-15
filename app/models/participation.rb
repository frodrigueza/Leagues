class Participation < ActiveRecord::Base
	before_create :set_missing_attrs
	belongs_to :inscription
	belongs_to :user
	has_many :goals
	has_many :cards

	def game_goals(game)
		game.goals.where(participation_id: self.id)
	end

	def game_cards(game, card_type)
		game.cards.where(participation_id: self.id, card_type: card_type)
	end

	def version_goals(version)
		goals.select{ |x| x.game.round.stage.version.id == version.id }
	end

	def version_cards(version, card_type)
		cards.select{ |x| x.game.round.stage.version.id == version.id && x.card_type == card_type}
	end

	private

	def set_missing_attrs
		if !self.number
			taken_numbers = []
			Inscription.find(inscription_id).participations.each do |p|
				if p.number
					taken_numbers << p.number
				end
			end

			(2..100).to_a.each do |n|
				if !taken_numbers.include?(n)
						self.number = n
						self.save
					return self
				end
			end
		end
	end
end
