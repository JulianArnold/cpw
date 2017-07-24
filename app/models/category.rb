# == Schema Information
#
# Table name: categories
#
#  id                 :integer          not null, primary key
#  name               :string
#  brand_id           :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#

class Category < ActiveRecord::Base
  has_attached_file :image, styles: { thumb: '60x60', medium: '140x140', large: '300x300' }, default_url: '/attachments/placeholders/:style/missing.png'

  scope :all_in_order, -> { order(:name) }
  validates :name, presence: true,
            uniqueness: true
  validates_attachment_content_type :image, content_type: /\Aimage/
end
