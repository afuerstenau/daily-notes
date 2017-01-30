class RemoveDoubleIdFromSuperteam < ActiveRecord::Migration[5.0]
  def change
    remove_reference :teams, :superteam_id
    add_reference :teams, :superteam, optional: true
  end
end
