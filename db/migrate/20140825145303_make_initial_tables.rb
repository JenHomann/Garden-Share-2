class MakeInitialTables < ActiveRecord::Migration
  def change
    
    create_table :plants do |t|
      t.string :name
    end
    
    create_table :tips do |t|
      t.string :info
    end
    
    create_table :yields do |t|
      t.integer :plant_id
      t.integer :number
    end
    
    create_table :plants_tips do |t|
      t.integer :plant_id
      t.integer :tip_id
    end
  end
end