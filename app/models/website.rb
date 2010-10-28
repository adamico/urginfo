class Website < ActiveRecord::Base
  attr_accessible :name, :url
end

# == Schema Information
# Schema version: 20101028142006
#
# Table name: websites
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  url        :string(255)
#  created_at :datetime
#  updated_at :datetime
#

