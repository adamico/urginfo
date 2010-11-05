class Info < ActiveRecord::Base
  attr_accessible :name, :state_event, :phones_attributes
  validates :name, :presence => true, :uniqueness => true

  belongs_to :category

  has_many :phones
  has_many :locations
  has_many :websites

  accepts_nested_attributes_for :phones, :allow_destroy => true,
    :reject_if => proc { |attrs| attrs.all? {|k, v| v.blank?} }

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
# Schema version: 20101104132923
#
# Table name: infos
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  state      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

