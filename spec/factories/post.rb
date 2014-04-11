FactoryGirl.define do
  factory :post do
    title "First Post"
    body "This is the newest post. It needs 20 characters to be saved."
    user
    topic
end
  
end