FactoryBot.define do
  factory :user do
    password { "Password" }
    password_confirmation { |u| u.password }

    sequence(:email) { |n| "test#{n}@example.com" }
  end
end
