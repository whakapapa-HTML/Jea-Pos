class Changecolumnhellos < ActiveRecord::Migration[5.2]
  def change
    rename_column :hellos, :hellos, :title
  end
end
