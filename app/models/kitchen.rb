# == Schema Information
#
# Table name: kitchens
#
#  id         :integer          not null, primary key
#  photo      :string(255)      not null
#  created_at :datetime
#  updated_at :datetime
#  user_id    :integer
#
# Indexes
#
#  index_kitchens_on_user_id  (user_id)
#

class Kitchen < ActiveRecord::Base
end
