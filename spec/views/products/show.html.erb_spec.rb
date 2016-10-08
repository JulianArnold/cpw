require 'rails_helper'

RSpec.describe "products/show", type: :view do
  before(:each) do
    @product = assign(:product, Product.create!(
      :name => "Name",
      :decription => "MyText",
      :device_id => 2,
      :brand_id => 3,
      :price => "9.99",
      :stock_quantity => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/4/)
  end
end
