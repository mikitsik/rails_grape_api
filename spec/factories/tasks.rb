FactoryBot.define do
  factory :task do
    name { "MyString" }
    status { Task.statuses.values.sample }
    deadline { "2019-09-25 10:46:41" }
    project
  end
end
