
FactoryGirl.define do
  factory :basic, :class => Refinery::Basics::Basic do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

