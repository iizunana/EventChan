class AddEventIdToEventJoin < ActiveRecord::Migration
  def change
    remove_column :join_events,  :eventid
    remove_column :join_events, :userid
    add_column :join_events, :event_id, :integer
    add_column :join_events, :user_id, :integer
  end
end
