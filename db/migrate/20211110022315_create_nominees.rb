class CreateNominees < ActiveRecord::Migration[5.2]
  def change
    create_table :nominees do |t|
      t.integer :name
      t.string :introduction

      t.timestamps
    end
  end
end
