class InfosItem < ActiveRecord::Base
  belongs_to :info
  belongs_to :item, :polymorphic => true
end


# == Schema Information
# Schema version: 20101028142006
#
# Table name: infos_items
#
#  id        :integer         not null, primary key
#  item_id   :integer
#  item_type :string(255)
#  info_id   :integer
#

