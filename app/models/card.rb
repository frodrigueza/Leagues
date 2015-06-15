class Card < ActiveRecord::Base
  belongs_to :participation
  belongs_to :game
end
