Factory.define :info do |f|
  f.sequence(:name) {|n| "name#{n}"}
end
