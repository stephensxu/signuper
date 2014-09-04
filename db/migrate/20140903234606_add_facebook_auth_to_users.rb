class AddFacebookAuthToUsers < ActiveRecord::Migration
  def change
    add_column :users, :provider, :string,   :null => false
    add_column :users, :uid, :string,        :null => false
    add_column :users, :name, :string,       :null => false
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :location, :string
    add_column :users, :gender, :string
    add_column :users, :verified, :boolean
    add_column :users, :link, :string
  end
end
