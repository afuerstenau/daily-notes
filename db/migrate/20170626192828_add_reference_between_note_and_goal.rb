class AddReferenceBetweenNoteAndGoal < ActiveRecord::Migration[5.0]
  def change
    remove_reference :goals, :note
    add_reference :notes, :goal, foreign_key: true
  end
end
