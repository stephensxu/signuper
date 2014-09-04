# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string(255)      not null
#  password_digest :string(255)
#  nickname        :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  provider        :string(255)
#  uid             :string(255)
#  name            :string(255)
#
# Indexes
#
#  index_users_on_email  (email) UNIQUE
#


class User < ActiveRecord::Base
  # has_secure_password
  
  validates :email, :presence => true, :uniqueness => true, :length => { :minimum => 6 }, :email => true
  # validates :password, :presence => true, :length => { :minimum => 6 }, :confirmation => true
  # validates :nickname, :presence => true, :length => { :minimum => 6 }, :uniqueness => true,
  #           :format => { :with => /\A[\w\s]+\z/, message: "nickname cannot contain special characters such as @#$%" }
  
  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      user.name = auth['info']['name']
      user.email = auth['info']['email']
    end
  end
end
