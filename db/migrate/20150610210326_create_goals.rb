class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.belongs_to :game, index: true
      t.belongs_to :participation, index: true

      t.timestamps
    end
  end
end
