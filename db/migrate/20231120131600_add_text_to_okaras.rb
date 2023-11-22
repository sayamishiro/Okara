class AddTextToOkaras < ActiveRecord::Migration[6.1]
  def change
    add_column :okaras, :Text, :text
  end
end
