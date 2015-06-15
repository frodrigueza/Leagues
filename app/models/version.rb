class Version < ActiveRecord::Base
	belongs_to :cup
	has_many :inscriptions, dependent: :destroy
	has_many :stages

	def participations_stads
		top_scorer_array = []
		inscriptions.each do |i|
			i.participations.each do |p|
				new_user = {
					participation: p,
					goals: p.goals.count,
					yellows: p.cards.where(card_type: 1).count,
					reds: p.cards.where(card_type: 2).count
				}
				if new_user[:goals] > 0 || new_user[:yellows] > 0 || new_user[:reds] > 0
					top_scorer_array << new_user
				end
			end
		end

		top_scorer_array.sort_by { |x| x[:goals].to_i }.reverse
	end


end
