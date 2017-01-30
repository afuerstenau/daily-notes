class ChangeNameOfSuperTeamField < ActiveRecord::Migration[5.0]
  def change
    remove_reference :teams, :super_team_id
    add_reference :teams, :superteam_id, index: true
  end
end
