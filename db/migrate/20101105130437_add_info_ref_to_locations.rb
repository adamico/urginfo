class AddInfoRefToLocations < ActiveRecord::Migration
  def self.up
    add_column :locations, :info_id, :integer
  end

  def self.down
    remove_column :locations, :info_id
  end
end
