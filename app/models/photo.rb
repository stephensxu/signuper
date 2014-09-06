# == Schema Information
#
# Table name: photos
#
#  id          :integer          not null, primary key
#  picture_url :string(255)      not null
#  created_at  :datetime
#  updated_at  :datetime
#  user_id     :integer
#
# Indexes
#
#  index_photos_on_user_id  (user_id)
#

require 'file_size_validator'

class Photo < ActiveRecord::Base
  belongs_to :user

  mount_uploader :picture_url, PhotoUploader
  validates :picture_url, :presence => true, 
            :file_size => { :maximum => 5.megabytes.to_i }
end
