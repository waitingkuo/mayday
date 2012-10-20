class CreatePolice < ActiveRecord::Migration
  def change
    create_table :police do |t|
      t.string :name
      t.string :content
      t.string :traffic_information
      t.string :display_addr
      t.string :poi_addr
      t.float :x
      t.float :y

      t.timestamps
    end
  end
end
