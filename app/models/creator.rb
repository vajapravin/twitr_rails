# == Schema Information
#
# Table name: creators
#
#  id         :integer          not null, primary key
#  username   :string(255)
#  email      :string(255)
#  phone      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Creator < ActiveRecord::Base
	has_many :tweeds
end
