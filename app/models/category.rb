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

class Category < ActiveRecord::Base
  scope :all_in_order, -> { order(:name) }
  validates :name, presence: true,
            uniqueness: true
end
