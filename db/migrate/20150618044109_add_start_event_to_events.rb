class AddStartEventToEvents < ActiveRecord::Migration
  def change
    add_column :events, :startEvent, :datetime
    add_column :events, :endEvent, :datetime
    remove_column :events,  :eventDate
  end
end
