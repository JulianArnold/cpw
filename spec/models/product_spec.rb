# == Schema Information
#
# Table name: products
#
#  id               :integer          not null, primary key
#  name             :string
#  description      :text
#  device_id        :integer
#  brand_id         :integer
#  price            :decimal(, )
#  stock_quantity   :integer
#  date_expected_at :date
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'rails_helper'

RSpec.describe Product, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
