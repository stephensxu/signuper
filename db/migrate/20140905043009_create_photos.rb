class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :picture_url, :null => false

      t.timestamps
    end
  end
end
