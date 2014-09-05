class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :picture, :null => false

      t.timestamps
    end
  end
end
