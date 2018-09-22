require 'rails_helper'

RSpec.describe "categories/index", type: :view do
  before(:each) do
    assign(:categories, [
      Category.create!(
        :name => "Name",
        :category_type => "Category Type"
      ),
      Category.create!(
        :name => "Name",
        :category_type => "Category Type"
      )
    ])
  end

  it "renders a list of categories" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Category Type".to_s, :count => 2
  end
end
