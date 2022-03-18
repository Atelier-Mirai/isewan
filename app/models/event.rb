class Event < ApplicationRecord
  scope :displayed, -> { where(display: true) }

  scope :preliminary, -> { where(category: "preliminary")
                           .or(Event.where(category: "both")) }
  scope :regional, -> { where(category: "regional")
                           .or(Event.where(category: "both")) }
end
