require 'rails_helper'

RSpec.describe "comments/index", type: :view do
  before(:each) do
    assign(:comments, [
      Comment.create!(
        :article_id => 2,
        :name => "Name",
        :description => "Description",
        :posted_by => "Posted By"
      ),
      Comment.create!(
        :article_id => 2,
        :name => "Name",
        :description => "Description",
        :posted_by => "Posted By"
      )
    ])
  end

  it "renders a list of comments" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Posted By".to_s, :count => 2
  end
end
