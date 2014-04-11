FactoryGirl.define do
  factory :user do
    name "Sheldon Smickley"
    sequence(:email) { |n| "perso#{n}@example.com" }
    password "helloworld"
    password_confirmation "helloworld"
    confirmed_at Time.now
  end
end