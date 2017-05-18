class CreateNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :notes do |t|
      t.string :text
      t.integer :teammember_id

      t.timestamps
    end
  end
end
