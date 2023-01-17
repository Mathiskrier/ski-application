class AddColumnRegionForSkiResort < ActiveRecord::Migration[7.0]
  def change
    add_column :ski_spots, :region, :string
  end
end
