class AddUserIdToOkaras < ActiveRecord::Migration[6.1]
  def change
    add_column :okaras, :user_id, :integer
  end
end
