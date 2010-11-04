class RemoveAncestryFromInfos < ActiveRecord::Migration
  def self.up
    change_table :infos do |t|
      t.remove :ancestry
    end
    remove_index :infos, :ancestry
  end

  def self.down
    change_table :infos do |t|
      t.string :ancestry
    end
    add_index :infos, :ancestry
  end
end
