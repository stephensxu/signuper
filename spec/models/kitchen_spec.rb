# == Schema Information
#
# Table name: kitchens
#
#  id         :integer          not null, primary key
#  photo      :string(255)      not null
#  created_at :datetime
#  updated_at :datetime
#

require 'rails_helper'

RSpec.describe Kitchen, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
