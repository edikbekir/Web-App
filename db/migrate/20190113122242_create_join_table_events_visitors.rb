class CreateJoinTableEventsVisitors < ActiveRecord::Migration[5.2]
  def change
    create_table :event_visitors do |t|
      t.integer :event_id, :visitor_id
      t.string :visitor_bssid
      t.boolean :visit

      t.timestamps
    end
  end
end
