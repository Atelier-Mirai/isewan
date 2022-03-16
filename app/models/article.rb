class Article < ApplicationRecord
  scope :displayed, -> { where(display: true) }
  scope :sorted, -> { order(updated_at: :desc) }
  scope :recent, -> { displayed.sorted }
end
