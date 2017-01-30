class CreateConnectionFromTeamMembersToTeams < ActiveRecord::Migration[5.0]
  def change
    add_reference :teammembers, :team
  end
end
