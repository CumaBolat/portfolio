FactoryBot.define do
  factory :user do
    username { 'John Doe' }
    email { 'john_doe@gmail.com' }
    password { 'jdoe' }
    id { 0 }
    transactions { [ ] }
  end

  factory :transaction do
    amount { 69 }
    description { 'Niceee' }
    income_or_expense { true }
  end
end
