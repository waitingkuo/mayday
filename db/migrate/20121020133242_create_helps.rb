class CreateHelps < ActiveRecord::Migration
  def change
    create_table :helps do |t|
      t.string :name
      t.string :description
      t.float :x
      t.float :y

      t.timestamps
    end
  end
end
