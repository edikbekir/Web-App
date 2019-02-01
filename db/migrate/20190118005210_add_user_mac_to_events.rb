class AddUserMacToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :user_mac, :string
  end
end
