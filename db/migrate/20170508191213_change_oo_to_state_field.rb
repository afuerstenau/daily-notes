class ChangeOoToStateField < ActiveRecord::Migration[5.0]
  def up
    remove_column :teammembers, :ooo
    add_column :teammembers, :state, :string, :default => "In the Office"
  end
  
  def down
    add_column :teammembers, :ooo, :boolean
    remove_column :teammembers, :state
  end
end
