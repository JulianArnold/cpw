# == Schema Information
#
# Table name: products
#
#  id                 :integer          not null, primary key
#  name               :string
#  description        :text
#  device_id          :integer
#  brand_id           :integer
#  price              :decimal(, )
#  stock_quantity     :integer
#  date_expected_at   :date
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#

class Product < ActiveRecord::Base
  has_attached_file :image, styles: { thumb: '60x60', medium: '140x140', large: '300x300' }, default_url: '/attachments/placeholders/:style/missing.png'
  belongs_to :brand
  belongs_to :device

  validates :name, presence: true
  validates :description, presence: true
  validates :brand_id, presence: true, numericality: { only_integer: true }
  validates :device_id, presence: true, numericality: { only_integer: true }
  validates :price, presence: true, numericality: { greater_than: 0, less_than: 100 }
  validates :stock_quantity, presence: true, numericality: { greater_than_or_equal_to: 0, less_than: 1_000 }
  validates_attachment_content_type :image, content_type: /\Aimage/
end
