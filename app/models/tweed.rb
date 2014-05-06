# == Schema Information
#
# Table name: tweeds
#
#  id         :integer          not null, primary key
#  creator_id :integer
#  content    :text
#  created_at :datetime
#  updated_at :datetime
#

class Tweed < ActiveRecord::Base
end
