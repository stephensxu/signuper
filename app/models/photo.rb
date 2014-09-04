# == Schema Information
#
# Table name: photos
#
#  id            :integer          not null, primary key
#  title         :string(255)      not null
#  photo_address :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#

class Photo < ActiveRecord::Base
end
