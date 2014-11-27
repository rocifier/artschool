class AddPositionToTabs < ActiveRecord::Migration
  def change
    add_column :tabs, :position, :integer
    add_index :tabs, :position
  end
end
