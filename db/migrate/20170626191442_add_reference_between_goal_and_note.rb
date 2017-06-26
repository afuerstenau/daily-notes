class AddReferenceBetweenGoalAndNote < ActiveRecord::Migration[5.0]
  def change
    add_reference :goals, :note, foreign_key: true
  end
end
