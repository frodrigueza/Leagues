class CreateVersions < ActiveRecord::Migration
  def change
    create_table :versions do |t|
      t.string :name
      t.belongs_to :cup, index: true

      t.timestamps
    end
  end
end
