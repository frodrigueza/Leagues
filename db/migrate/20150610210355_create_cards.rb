class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.belongs_to :game, index: true
      t.belongs_to :participation, index: true
      t.integer :card_type

      t.timestamps
    end
  end
end
