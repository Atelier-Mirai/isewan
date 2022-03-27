class Event < ApplicationRecord
  # has_one_attached :image # 添付画像は一つ
  has_many_attached :nor_pdfs    # 複数の添付PDF
  has_many_attached :result_pdfs # 複数の添付PDF

  # activestorage-validator による添付画像の検証
  validates :nor_pdfs,
    content_type: %i(pdf),               # 画像の種類
    size: { less_than_or_equal_to: 5.megabytes }              # ファイルサイズ
    # dimension: { width: { max: 2000 }, height: { max: 2000 } } # 画像の大きさ

  validates :result_pdfs,
    content_type: %i(pdf),               # 画像の種類
    size: { less_than_or_equal_to: 5.megabytes }              # ファイルサイズ
    # dimension: { width: { max: 2000 }, height: { max: 2000 } } # 画像の大きさ

  # scope
  scope :displayed, -> { where(display: true) }
  scope :preliminary, -> { where(category: "preliminary")
                           .or(Event.where(category: "both")) }
  scope :regional, -> { where(category: "regional")
                           .or(Event.where(category: "both")) }
end
