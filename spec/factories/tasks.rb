FactoryBot.define do
  factory :task do
    name { "MyString" }
    status { false }
    deadline { "2019-09-25 10:46:41" }
    project { nil }
  end
end
