class AddHashtagToGoals < ActiveRecord::Migration[5.0]
  def change
    add_column :goals, :hashtag, :string
    Goal.all.each do |goal|
      goal.hashtag="default"
      goal.save
    end

    change_column_null :goals, :hashtag, false
  end
end
