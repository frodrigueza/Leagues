class CreateStages < ActiveRecord::Migration
  def change
    create_table :stages do |t|
      t.string :name
      t.belongs_to :version, index: true

      t.timestamps
    end
  end
end
