require 'rails_helper'

RSpec.describe "products/new", type: :view do
  before(:each) do
    assign(:product, Product.new(
      :name => "MyString",
      :decription => "MyText",
      :device_id => 1,
      :brand_id => 1,
      :price => "9.99",
      :stock_quantity => 1
    ))
  end

  it "renders new product form" do
    render

    assert_select "form[action=?][method=?]", products_path, "post" do

      assert_select "input#product_name[name=?]", "product[name]"

      assert_select "textarea#product_decription[name=?]", "product[decription]"

      assert_select "input#product_device_id[name=?]", "product[device_id]"

      assert_select "input#product_brand_id[name=?]", "product[brand_id]"

      assert_select "input#product_price[name=?]", "product[price]"

      assert_select "input#product_stock_quantity[name=?]", "product[stock_quantity]"
    end
  end
end
