class CreateInscriptions < ActiveRecord::Migration
  def change
    create_table :inscriptions do |t|
      t.belongs_to :version, index: true
      t.belongs_to :team, index: true
      t.integer :captain_id

      t.timestamps
    end
  end
end
