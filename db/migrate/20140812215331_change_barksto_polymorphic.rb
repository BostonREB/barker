class ChangeBarkstoPolymorphic < ActiveRecord::Migration
  def change
    remove_column :barks, :body
    add_column :barks, :content_id, :integer
    add_column :barks, :content_type, :string
    add_index :barks, [:content_type, :content_id]
  end
end
