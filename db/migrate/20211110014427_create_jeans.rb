class CreateJeans < ActiveRecord::Migration[5.2]
  def change
    create_table :jeans do |t|
      t.integer :user_id
      t.integer :brand_id
      t.integer :number_of_laundry
      t.date :date_of_purchase
      t.string :jeans_image
      t.integer :lot_id
      t.integer :year_id
      t.string :name
      t.integer :number_of_award

      t.timestamps
    end
  end
end
