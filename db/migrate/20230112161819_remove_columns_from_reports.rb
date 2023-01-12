class RemoveColumnsFromReports < ActiveRecord::Migration[7.0]
  def change
    remove_column :reports, :ski_spot_id
    remove_column :reports, :user_id
  end
end
