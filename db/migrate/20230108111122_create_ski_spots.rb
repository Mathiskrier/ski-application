class CreateSkiSpots < ActiveRecord::Migration[7.0]
  def change
    create_table :ski_spots do |t|
      t.string :location_name

      t.timestamps
    end
  end
end
