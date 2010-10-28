class CreateInfosItems < ActiveRecord::Migration
  def self.up
    create_table :infos_items do |t|
      t.references :item, :polymorphic => true
      t.references :info
    end
  end

  def self.down
    drop_table :infos_items
  end
end
