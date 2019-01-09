class RemoveHashtag < ActiveRecord::Migration[5.1]
  def change
    remove_column :goals, :hashtag
  end
end
