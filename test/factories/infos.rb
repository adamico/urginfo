Factory.define :info do |f|
  f.sequence(:name) {|n| "name#{n}"}
end

Factory.define :published_info, :parent => :info do |f|
  f.state 'published'
end

Factory.define :pending_info, :parent => :info do |f|
  f.state 'pending'
end
