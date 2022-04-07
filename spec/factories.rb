FactoryBot.define do
  factory :user do
    username { 'John Doe' }
    email { 'john_doe@gmail.com' }
    password { 'jdoe' }
    id { 0 }
  end

  factory :transaction do
    amount { 69 }
    description { 'Nice' }
    income_or_expense { true }
    user_id { 1 }
  end
end
