class Info < ActiveRecord::Base
  has_ancestry
  attr_accessible :name
  validates :name, :presence => true, :uniqueness => true

  state_machine :initial => :draft do
    #TODO add one or more date fields for infos validity duration calculations
    event :confirm do
      transition [:draft, :pending] => :published
    end
    event :put_aside do
      transition :published => :pending
    end
  end
end

# == Schema Information
# Schema version: 20101028094253
#
# Table name: infos
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  state      :string(255)
#  ancestry   :string(255)
#  created_at :datetime
#  updated_at :datetime
#

