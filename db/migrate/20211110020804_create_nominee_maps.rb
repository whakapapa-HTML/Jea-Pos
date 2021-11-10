class CreateNomineeMaps < ActiveRecord::Migration[5.2]
  def change
    create_table :nominee_maps do |t|
      t.integer :nominee_id
      t.integer :jeans_id
      t.integer :user_id

      t.timestamps
    end
  end
end
