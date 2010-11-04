class Category < ActiveRecord::Base
  attr_accessible :name, :parent_id
  validates :name, :presence => true, :uniqueness => true

  has_ancestry
end

# == Schema Information
# Schema version: 20101104132923
#
# Table name: categories
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  ancestry   :string(255)
#  created_at :datetime
#  updated_at :datetime
#

