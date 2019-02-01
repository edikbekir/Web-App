class AddBeginToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :begin, :boolean
  end
end
