class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.belongs_to :user, index: true
      t.belongs_to :team, index: true
      t.integer :role, default: 1

      t.timestamps
    end
  end
end
