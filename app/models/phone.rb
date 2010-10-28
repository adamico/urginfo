class Phone < ActiveRecord::Base
  attr_accessible :name, :number
end

# == Schema Information
# Schema version: 20101028142006
#
# Table name: phones
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  number     :string(255)
#  created_at :datetime
#  updated_at :datetime
#

