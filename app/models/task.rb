class Task < ApplicationRecord
  belongs_to :project

  enum status: [:done, :undone]
end
