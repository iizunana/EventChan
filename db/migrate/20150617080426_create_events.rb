class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.int :eventID
      t.string :eventName
      t.string :eventDate
      t.string :eventPlace
      t.string :eventComment

      t.timestamps
    end
  end
end
