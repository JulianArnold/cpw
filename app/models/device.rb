class Device < Category
  scope :all, -> { where.not(brand_id: nil) }
  belongs_to :brand
  validates :brand_id, presence: true
end
