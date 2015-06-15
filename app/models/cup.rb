class Cup < ActiveRecord::Base
  belongs_to :league
  has_many :versions, dependent: :destroy
end
