class AddPriorityfieldToGoals < ActiveRecord::Migration[5.0]
  def change
    add_column :goals, :priority, :integer
  end
end
