class Gallery < ApplicationRecord
  has_one_attached :image    # 一つの画像添付

  validates :image,
    content_type: %i(gif jpeg jpg png webp),               # 画像の種類
    size: { less_than_or_equal_to: 5.megabytes }           # ファイルサイズ

  scope :displayed, -> { where(display: true) }
end
