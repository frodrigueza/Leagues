class CreateGames < ActiveRecord::Migration
	def change
		create_table :games do |t|
			t.belongs_to :round, index: true
			t.integer :local_inscription_id
			t.integer :away_inscription_id
			t.integer :player_of_the_match_id
			t.boolean :played, default: false
			t.datetime :play_time
			t.string :place

			t.timestamps
		end
	end
end
