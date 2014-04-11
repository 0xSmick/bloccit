FactoryGirl.define do
  factory :user do
    name "Sheldon Smickley"
    email "sheldon.smickley@gmail.com"
    password "helloworld"
    password_confirmation "helloworld"
    confirmed_at Time.now
  end
end