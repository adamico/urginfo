class Phone < ActiveRecord::Base
  attr_accessible :name, :number
  belongs_to :info
end


# == Schema Information
# Schema version: 20101105130437
#
# Table name: phones
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  number     :string(255)
#  created_at :datetime
#  updated_at :datetime
#  info_id    :integer
#

