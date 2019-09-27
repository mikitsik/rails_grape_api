class AuthenticationToken < ApplicationRecord
  belongs_to :user
  validates :token, presence: true
  scope :valid,  -> { where("expires_at IS NULL OR expires_at>?", 1.day.from_now) }
end
