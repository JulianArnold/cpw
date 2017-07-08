require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :email => "Email",
        :first_name => "First Name",
        :last_name => "Last Name",
        :type => "Type",
        :billing_address => "MyText",
        :shipping_address => "MyText",
        :crypted_password => "Crypted Password",
        :password_salt => "Password Salt",
        :persistence_token => "Persistence Token",
        :perishable_token => "Perishable Token",
        :single_access_token => "Single Access Token",
        :login_count => 2,
        :failed_login_count => 3,
        :current_login_ip => "Current Login Ip",
        :last_login_ip => "Last Login Ip",
        :active => false,
        :activation_token => "Activation Token",
        :password_reset_token => "Password Reset Token"
      ),
      User.create!(
        :email => "Email",
        :first_name => "First Name",
        :last_name => "Last Name",
        :type => "Type",
        :billing_address => "MyText",
        :shipping_address => "MyText",
        :crypted_password => "Crypted Password",
        :password_salt => "Password Salt",
        :persistence_token => "Persistence Token",
        :perishable_token => "Perishable Token",
        :single_access_token => "Single Access Token",
        :login_count => 2,
        :failed_login_count => 3,
        :current_login_ip => "Current Login Ip",
        :last_login_ip => "Last Login Ip",
        :active => false,
        :activation_token => "Activation Token",
        :password_reset_token => "Password Reset Token"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Crypted Password".to_s, :count => 2
    assert_select "tr>td", :text => "Password Salt".to_s, :count => 2
    assert_select "tr>td", :text => "Persistence Token".to_s, :count => 2
    assert_select "tr>td", :text => "Perishable Token".to_s, :count => 2
    assert_select "tr>td", :text => "Single Access Token".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Current Login Ip".to_s, :count => 2
    assert_select "tr>td", :text => "Last Login Ip".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Activation Token".to_s, :count => 2
    assert_select "tr>td", :text => "Password Reset Token".to_s, :count => 2
  end
end
