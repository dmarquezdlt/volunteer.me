class AddImageIdToVolunteers < ActiveRecord::Migration
  def change
    add_column :volunteers, :image_id, :integer
  end
end
