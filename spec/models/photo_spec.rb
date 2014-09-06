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

require 'rails_helper'

RSpec.describe Photo, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
