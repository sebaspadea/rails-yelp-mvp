class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true, format: { with: /\A[0-9]{2}\s[0-9]{2}\s[0-9]{2}\s[0-9]{2}\s[0-9]{2}\Z/ }
  validates :category, presence: true, inclusion: { in: CATEGORY }
end
