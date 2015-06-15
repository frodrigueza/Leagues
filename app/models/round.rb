class Round < ActiveRecord::Base
  belongs_to :stage
  has_many :games, dependent: :destroy
end
