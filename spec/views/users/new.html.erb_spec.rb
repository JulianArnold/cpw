require 'rails_helper'

RSpec.describe "users/new", type: :view do
  before(:each) do
    assign(:user, User.new(
      :email => "MyString",
      :first_name => "MyString",
      :last_name => "MyString",
      :type => "",
      :billing_address => "MyText",
      :shipping_address => "MyText",
      :crypted_password => "MyString",
      :password_salt => "MyString",
      :persistence_token => "MyString",
      :perishable_token => "MyString",
      :single_access_token => "MyString",
      :login_count => 1,
      :failed_login_count => 1,
      :current_login_ip => "MyString",
      :last_login_ip => "MyString",
      :active => false,
      :activation_token => "MyString",
      :password_reset_token => "MyString"
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input#user_email[name=?]", "user[email]"

      assert_select "input#user_first_name[name=?]", "user[first_name]"

      assert_select "input#user_last_name[name=?]", "user[last_name]"

      assert_select "input#user_type[name=?]", "user[type]"

      assert_select "textarea#user_billing_address[name=?]", "user[billing_address]"

      assert_select "textarea#user_shipping_address[name=?]", "user[shipping_address]"

      assert_select "input#user_crypted_password[name=?]", "user[crypted_password]"

      assert_select "input#user_password_salt[name=?]", "user[password_salt]"

      assert_select "input#user_persistence_token[name=?]", "user[persistence_token]"

      assert_select "input#user_perishable_token[name=?]", "user[perishable_token]"

      assert_select "input#user_single_access_token[name=?]", "user[single_access_token]"

      assert_select "input#user_login_count[name=?]", "user[login_count]"

      assert_select "input#user_failed_login_count[name=?]", "user[failed_login_count]"

      assert_select "input#user_current_login_ip[name=?]", "user[current_login_ip]"

      assert_select "input#user_last_login_ip[name=?]", "user[last_login_ip]"

      assert_select "input#user_active[name=?]", "user[active]"

      assert_select "input#user_activation_token[name=?]", "user[activation_token]"

      assert_select "input#user_password_reset_token[name=?]", "user[password_reset_token]"
    end
  end
end
