class Project < ApplicationRecord
  belongs_to :user, optional: true
  has_many :tasks, dependent: :delete_all
end
