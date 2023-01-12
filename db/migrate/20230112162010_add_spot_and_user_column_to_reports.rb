class AddSpotAndUserColumnToReports < ActiveRecord::Migration[7.0]
  def change
    add_reference :reports, :user, null: false, foreign_key: true
    add_reference :reports, :ski_spot, null: false, foreign_key: true
  end
end
