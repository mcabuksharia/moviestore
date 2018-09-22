require 'rails_helper'

RSpec.describe "guests/edit", type: :view do
  before(:each) do
    @guest = assign(:guest, Guest.create!(
      :comment_id => 1,
      :name => "MyString"
    ))
  end

  it "renders the edit guest form" do
    render

    assert_select "form[action=?][method=?]", guest_path(@guest), "post" do

      assert_select "input#guest_comment_id[name=?]", "guest[comment_id]"

      assert_select "input#guest_name[name=?]", "guest[name]"
    end
  end
end
