class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.belongs_to :stage, index: true
      t.string :name
      t.integer :order

      t.timestamps
    end
  end
end
