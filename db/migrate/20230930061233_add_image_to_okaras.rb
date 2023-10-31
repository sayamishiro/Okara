class AddImageToOkaras < ActiveRecord::Migration[6.1]
  def change
    add_column :okaras, :image, :string
  end
end
