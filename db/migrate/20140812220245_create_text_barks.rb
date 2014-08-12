class CreateTextBarks < ActiveRecord::Migration
  def change
    create_table :text_barks do |t|
      t.string :body
    end
  end
end
