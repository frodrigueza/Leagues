class CreateGroupInscriptions < ActiveRecord::Migration
  def change
    create_table :group_inscriptions do |t|
      t.belongs_to :group, index: true
      t.belongs_to :inscription, index: true

      t.timestamps
    end
  end
end
