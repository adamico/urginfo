class CreateInfos < ActiveRecord::Migration
  def self.up
    create_table :infos do |t|
      t.string :name
      t.string :state
      t.string :ancestry

      t.timestamps
    end
    add_index :infos, :ancestry
  end

  def self.down
    drop_table :infos
    remove_index :infos, :ancestry
  end
end
