class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :title, :null => false
      t.string :photo_address

      t.timestamps
    end
  end
end
