class AddInfoRefToWebsites < ActiveRecord::Migration
  def self.up
    add_column :websites, :info_id, :integer
  end

  def self.down
    remove_column :websites, :info_id
  end
end
