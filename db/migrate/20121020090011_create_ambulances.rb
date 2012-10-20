class CreateAmbulances < ActiveRecord::Migration
  def change
    create_table :ambulances do |t|
      t.string :name
      t.string :category
      t.string :tel
      t.string :traffic_info
      t.string :display_addr
      t.string :poi_addr
      t.float :x
      t.float :y

      t.timestamps
    end
  end
end
