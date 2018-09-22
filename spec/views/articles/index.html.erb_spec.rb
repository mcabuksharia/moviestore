require 'rails_helper'

RSpec.describe "articles/index", type: :view do
  before(:each) do
    assign(:articles, [
      Article.create!(
        :category_id => 2,
        :name => "Name",
        :article_type => "Article Type",
        :author => "Author"
      ),
      Article.create!(
        :category_id => 2,
        :name => "Name",
        :article_type => "Article Type",
        :author => "Author"
      )
    ])
  end

  it "renders a list of articles" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Article Type".to_s, :count => 2
    assert_select "tr>td", :text => "Author".to_s, :count => 2
  end
end
