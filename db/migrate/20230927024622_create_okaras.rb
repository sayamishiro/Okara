class CreateOkaras < ActiveRecord::Migration[6.1]
  def change
    create_table :okaras do |t|
      t.string :title
      t.string :gozen1
      t.string :access1
      t.string :gozen2
      t.string :access2
      t.string :gogo1
      t.string :access3
      t.string :gogo2
      t.string :access4
      t.string :yoru

      t.timestamps
    add_column :okaras, :image, :string 
     end
  end
end