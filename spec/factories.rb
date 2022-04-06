FactoryBot.define do
  factory :user do
    username { 'John Doe' }
    email { 'john_doe@gmail.com' }
    password { 'jdoe' }
  end
end
