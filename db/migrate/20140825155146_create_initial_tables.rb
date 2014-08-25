class CreateInitialTables < ActiveRecord::Migration
  def change
    add_column :plants, :fruitbearing, :boolean, default: true
  end
end
