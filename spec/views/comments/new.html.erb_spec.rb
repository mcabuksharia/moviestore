require 'rails_helper'

RSpec.describe "comments/new", type: :view do
  before(:each) do
    assign(:comment, Comment.new(
      :article_id => 1,
      :name => "MyString",
      :description => "MyString",
      :posted_by => "MyString"
    ))
  end

  it "renders new comment form" do
    render

    assert_select "form[action=?][method=?]", comments_path, "post" do

      assert_select "input#comment_article_id[name=?]", "comment[article_id]"

      assert_select "input#comment_name[name=?]", "comment[name]"

      assert_select "input#comment_description[name=?]", "comment[description]"

      assert_select "input#comment_posted_by[name=?]", "comment[posted_by]"
    end
  end
end
