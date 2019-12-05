class CreateSpots < ActiveRecord::Migration[5.2]
  def change
    create_table :spots do |t|
      t.string :address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
    add_index :spots, :latitude
    add_index :spots, :longitude
  end
end
