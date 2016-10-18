class Device < Category
  scope :all_devices, -> { where.not(brand_id: nil) }
  belongs_to :brand
  validates :brand_id, presence: true
  default_scope { all_devices }
end
