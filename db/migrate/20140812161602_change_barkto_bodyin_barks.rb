class ChangeBarktoBodyinBarks < ActiveRecord::Migration
  def change
    rename_column :barks, :bark, :body
  end
end
