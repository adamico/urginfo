
FactoryGirl.define do
  %w(category info).each do |model|
    sequence "#{model}_name".to_sym do |n|
      "#{model}#{n}"
    end
  end

  sequence :phone_number do |n|
    "000#{n}"
  end

  factory :category do
    name {Factory.next :category_name}
  end

  factory :info do
    name {Factory.next :info_name}
  end

  factory :published_info, :parent => :info do
    state 'published'
  end

  factory :pending_info, :parent => :info do
    state 'pending'
  end
  factory :location do
    name "location name"
  end
  factory :phone do
    number {Factory.next :phone_number}
  end
  factory :website do
    name "url"
  end
end
