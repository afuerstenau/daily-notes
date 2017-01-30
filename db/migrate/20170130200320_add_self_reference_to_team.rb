class AddSelfReferenceToTeam < ActiveRecord::Migration[5.0]
  def change
    add_reference :teams, :super_team_id, index: true
  end
end
