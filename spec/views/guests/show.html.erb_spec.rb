require 'rails_helper'

RSpec.describe "guests/show", type: :view do
  before(:each) do
    @guest = assign(:guest, Guest.create!(
      :comment_id => 2,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Name/)
  end
end
