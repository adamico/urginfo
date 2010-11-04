# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
#

root1 = Category.create(:name => 'root1')
child1 = root1.children.create(:name => 'child1')
child2 = root1.children.create(:name => 'child2')
gchild = child1.children.create(:name => 'gchild')
root2 = Category.create(:name => 'root2')

gchild.infos.create(:name => 'draft')
published = gchild.infos.create(:name => 'published')
published.publish!
pending = gchild.infos.create(:name => 'pending')
pending.publish!
pending.put_aside!
