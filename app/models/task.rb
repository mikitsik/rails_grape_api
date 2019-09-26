class Task < ApplicationRecord
  belongs_to :project

  enum status: [:undone, :done]
  scope :prioritize, -> { order(:status) }
end
