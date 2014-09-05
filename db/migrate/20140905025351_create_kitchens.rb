class CreateKitchens < ActiveRecord::Migration
  def change
    create_table :kitchens do |t|
      t.string :photo, null: false

      t.timestamps
    end
  end
end
