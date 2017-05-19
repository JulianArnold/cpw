class Brand < Category
  scope :all_brands, -> { where(brand_id: nil) }
  has_many :devices
  has_many :products, through: :devices
  validates :brand_id, absence: true
  default_scope { all_brands }
end
