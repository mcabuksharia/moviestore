require 'rails_helper'

RSpec.describe "articles/edit", type: :view do
  before(:each) do
    @article = assign(:article, Article.create!(
      :category_id => 1,
      :name => "MyString",
      :article_type => "MyString",
      :author => "MyString"
    ))
  end

  it "renders the edit article form" do
    render

    assert_select "form[action=?][method=?]", article_path(@article), "post" do

      assert_select "input#article_category_id[name=?]", "article[category_id]"

      assert_select "input#article_name[name=?]", "article[name]"

      assert_select "input#article_article_type[name=?]", "article[article_type]"

      assert_select "input#article_author[name=?]", "article[author]"
    end
  end
end
