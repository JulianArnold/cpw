class Product < ActiveRecord::Base
  belongs_to :brand
  belongs_to :device

  validates :name, presence: true
  validates :description, presence: true
  validates :brand_id, presence: true, numericality: { only_integer: true }
  validates :device_id, presence: true, numericality: { only_integer: true }
  validates :price, presence: true, numericality: { greater_than: 0, less_than: 100 }
  validates :stock_quantity, presence: true, numericality: { greater_than_or_equal_to: 0, less_than: 1_000 }
end
