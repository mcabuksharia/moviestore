require 'rails_helper'

RSpec.describe "tags/index", type: :view do
  before(:each) do
    assign(:tags, [
      Tag.create!(
        :article_id => 2,
        :name => "Name"
      ),
      Tag.create!(
        :article_id => 2,
        :name => "Name"
      )
    ])
  end

  it "renders a list of tags" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
