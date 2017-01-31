class AddOooFieldToTeammember < ActiveRecord::Migration[5.0]
  def up
    add_column :teammembers, :ooo, :boolean
  end

  def down
    remove_column :teammembers, :ooo
  end
end
