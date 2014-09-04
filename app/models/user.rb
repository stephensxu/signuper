# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string(255)      not null
#  nickname        :string(255)
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  provider        :string(255)      not null
#  uid             :string(255)      not null
#  name            :string(255)      not null
#  first_name      :string(255)
#  last_name       :string(255)
#  image           :string(255)
#  location        :string(255)
#  gender          :string(255)
#  verified        :boolean
#  link            :string(255)
#  avatar          :string(255)
#
# Indexes
#
#  index_users_on_email  (email) UNIQUE
#


class User < ActiveRecord::Base
  # has_secure_password
  mount_uploader :avatar, AvatarUploader
  
  validates :email, :presence => true, :uniqueness => true, :length => { :minimum => 6 }, :email => true
  validates :provider, :presence => true
  validates :uid, :presence => true
  validates :name, :presence => true
  # validates :password, :presence => true, :length => { :minimum => 6 }, :confirmation => true
  # validates :nickname, :presence => true, :length => { :minimum => 6 }, :uniqueness => true,
  #           :format => { :with => /\A[\w\s]+\z/, message: "nickname cannot contain special characters such as @#$%" }
  
  def self.create_with_omniauth(auth)
    create! do |user|
      user.email = auth['info']['email']
      user.provider = auth['provider']
      user.uid = auth['uid']
      user.name = auth['info']['name']
      user.first_name = auth['info']['first_name']
      user.last_name = auth['info']['last_name']
      user.image = auth['info']['image']
      user.location = auth['info']['location']
      user.gender = auth['extra']['raw_info']['gender']
      user.verified = auth['info']['verified']
      user.link = auth['extra']['raw_info']['link']
    end
  end
end
