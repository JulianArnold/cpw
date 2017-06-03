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

class Brand < Category
  has_many :devices, foreign_key: :brand_id
  has_many :products, through: :devices
  validates :brand_id, absence: true

  scope :all_brands, -> { where(brand_id: nil) }
  default_scope { all_brands }
end
