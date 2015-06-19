class CreateJoinEvents < ActiveRecord::Migration
  def change
    create_table :join_events do |t|
      t.integer :userid
      t.integer :eventid
      t.integer :status
      t.text :comment

      t.timestamps
    end
  end
end
