class Website < ActiveRecord::Base
  attr_accessible :name, :url
  belongs_to :info
end


# == Schema Information
# Schema version: 20101105131507
#
# Table name: websites
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  url        :string(255)
#  created_at :datetime
#  updated_at :datetime
#  info_id    :integer
#

