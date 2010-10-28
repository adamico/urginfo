class Location < ActiveRecord::Base
  attr_accessible :name, :address, :city, :country, :cp
end

# == Schema Information
# Schema version: 20101028142006
#
# Table name: locations
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  address    :string(255)
#  city       :string(255)
#  country    :string(255)
#  cp         :string(255)
#  created_at :datetime
#  updated_at :datetime
#

