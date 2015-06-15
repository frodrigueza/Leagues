class CreateParticipations < ActiveRecord::Migration
  def change
    create_table :participations do |t|
      t.belongs_to :inscription, index: true
      t.belongs_to :user, index: true
      t.integer :number

      t.timestamps
    end
  end
end
