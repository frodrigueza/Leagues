class CreateCups < ActiveRecord::Migration
  def change
    create_table :cups do |t|
      t.string :name
      t.belongs_to :league, index: true

      t.timestamps
    end
  end
end
