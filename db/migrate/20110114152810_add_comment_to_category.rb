class AddCommentToCategory < ActiveRecord::Migration
  def self.up
    add_column :categories, :comment, :text
  end

  def self.down
    remove_column :categories, :comment
  end
end
