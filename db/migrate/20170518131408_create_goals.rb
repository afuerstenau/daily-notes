class CreateGoals < ActiveRecord::Migration[5.0]
  def change
    create_table :goals do |t|
      t.string :summary
      t.string :link
      t.string :due_date
      t.string :eta

      t.timestamps
    end
  end
end
