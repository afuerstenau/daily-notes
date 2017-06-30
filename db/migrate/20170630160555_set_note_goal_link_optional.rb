class SetNoteGoalLinkOptional < ActiveRecord::Migration[5.0]
  def change
    remove_reference :notes, :goal
    add_reference :notes, :goal, foreign_key: true, optional: true
  end
end
