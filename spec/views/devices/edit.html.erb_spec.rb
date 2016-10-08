require 'rails_helper'

RSpec.describe "devices/edit", type: :view do
  before(:each) do
    @device = assign(:device, Device.create!(
      :name => "MyString",
      :brand_id => 1
    ))
  end

  it "renders the edit device form" do
    render

    assert_select "form[action=?][method=?]", device_path(@device), "post" do

      assert_select "input#device_name[name=?]", "device[name]"

      assert_select "input#device_brand_id[name=?]", "device[brand_id]"
    end
  end
end
