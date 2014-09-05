# == Schema Information
#
# Table name: kitchens
#
#  id         :integer          not null, primary key
#  photo      :string(255)      not null
#  created_at :datetime
#  updated_at :datetime
#

class Kitchen < ActiveRecord::Base
end
