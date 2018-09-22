require 'rails_helper'

RSpec.describe "articles/show", type: :view do
  before(:each) do
    @article = assign(:article, Article.create!(
      :category_id => 2,
      :name => "Name",
      :article_type => "Article Type",
      :author => "Author"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Article Type/)
    expect(rendered).to match(/Author/)
  end
end
