class AddInfoRefToPhones < ActiveRecord::Migration
  def self.up
    add_column :phones, :info_id, :integer
  end

  def self.down
    remove_column :phones, :info_id
  end
end
