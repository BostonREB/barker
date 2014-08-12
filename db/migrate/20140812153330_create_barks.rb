class CreateBarks < ActiveRecord::Migration
  def change
    create_table :barks do |t|
      t.string :bark
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
