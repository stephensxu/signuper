class AddUserToKitchen < ActiveRecord::Migration
  def change
    add_reference :kitchens, :user, index: true
  end
end
