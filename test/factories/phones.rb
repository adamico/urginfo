Factory.define :phone do |f|
  f.sequence(:number) {|n| "000#{n}"}
end
