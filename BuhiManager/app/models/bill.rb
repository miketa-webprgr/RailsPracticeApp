class Bill < ApplicationRecord
  validates :status, inclusion: {in: [true, false]}
  validates :name, presence: true
  validates :paid_on, presence: true
  validates :item, presence: true
  validates :price, numericality: { greater_than: 0 }
end