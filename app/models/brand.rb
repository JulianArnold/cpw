class Brand < Category
  scope :all, -> { where(brand_id: nil) }
  has_many :devices
  validates :brand_id, presence: true
end
