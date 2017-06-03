# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  name       :string
#  brand_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Device < Category
  belongs_to :brand
  has_many :products
  validates :brand_id, presence: true

  scope :all_devices, -> { where.not(brand_id: nil) }
  default_scope { all_devices }
end
