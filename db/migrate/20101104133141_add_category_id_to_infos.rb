class AddCategoryIdToInfos < ActiveRecord::Migration
  def self.up
    change_table :infos do |t|
      t.references :category
    end
  end

  def self.down
    change_table :infos do |t|
      t.remove_references :category
    end
  end
end
