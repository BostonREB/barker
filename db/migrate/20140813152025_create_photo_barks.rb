class CreatePhotoBarks < ActiveRecord::Migration
  def change
    create_table :photo_barks do |t|
      t.attachment :image
    end
  end
end
