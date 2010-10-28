class Info < ActiveRecord::Base
  attr_accessible :name, :state_event
  validates :name, :presence => true, :uniqueness => true

  has_ancestry

  #has many polymorph section
  has_many_polymorphs :items, :from => [:phones, :locations, :websites],
    :dependent => :destroy

  state_machine :initial => :draft do
    #TODO add one or more date fields for infos validity duration calculations
    event :publish do
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

