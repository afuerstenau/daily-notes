class AddAdditionalTextfieldToGoals < ActiveRecord::Migration[5.1]
  def change
    add_column :goals, :info, :string
  end
end
