# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  password_digest        :string(255)      not null
#  nickname               :string(255)      not null
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  provider               :string(255)
#  uid                    :string(255)
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#


class User < ActiveRecord::Base
  # has_secure_password
  
  # validates :email, :presence => true, :uniqueness => true, :length => { :minimum => 6 }, :email => true
  # validates :password, :presence => true, :length => { :minimum => 6 }, :confirmation => true
  # validates :nickname, :presence => true, :length => { :minimum => 6 }, :uniqueness => true,
  #           :format => { :with => /\A[\w\s]+\z/, message: "nickname cannot contain special characters such as @#$%" }
end
