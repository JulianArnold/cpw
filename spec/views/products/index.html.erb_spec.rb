require 'rails_helper'

RSpec.describe "products/index", type: :view do
  before(:each) do
    assign(:products, [
      Product.create!(
        :name => "Name",
        :decription => "MyText",
        :device_id => 2,
        :brand_id => 3,
        :price => "9.99",
        :stock_quantity => 4
      ),
      Product.create!(
        :name => "Name",
        :decription => "MyText",
        :device_id => 2,
        :brand_id => 3,
        :price => "9.99",
        :stock_quantity => 4
      )
    ])
  end

  it "renders a list of products" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
