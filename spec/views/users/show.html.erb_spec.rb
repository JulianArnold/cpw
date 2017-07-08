require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Type/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Crypted Password/)
    expect(rendered).to match(/Password Salt/)
    expect(rendered).to match(/Persistence Token/)
    expect(rendered).to match(/Perishable Token/)
    expect(rendered).to match(/Single Access Token/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Current Login Ip/)
    expect(rendered).to match(/Last Login Ip/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Activation Token/)
    expect(rendered).to match(/Password Reset Token/)
  end
end
