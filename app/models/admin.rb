# == Schema Information
#
# Table name: users
#
#  id                   :integer          not null, primary key
#  email                :string
#  first_name           :string
#  last_name            :string
#  type                 :string           default("Customer")
#  billing_address      :text
#  shipping_address     :text
#  crypted_password     :string(128)      default(""), not null
#  password_salt        :string(128)      default(""), not null
#  persistence_token    :string
#  perishable_token     :string(128)
#  single_access_token  :string
#  login_count          :integer          default(0)
#  failed_login_count   :integer          default(0)
#  last_request_at      :datetime
#  current_login_at     :datetime
#  last_login_at        :datetime
#  current_login_ip     :string
#  last_login_ip        :string
#  active               :boolean          default(FALSE), not null
#  activation_token     :string
#  password_reset_token :string
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

class Admin < User
end
