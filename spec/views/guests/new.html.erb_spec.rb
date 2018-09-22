require 'rails_helper'

RSpec.describe "guests/new", type: :view do
  before(:each) do
    assign(:guest, Guest.new(
      :comment_id => 1,
      :name => "MyString"
    ))
  end

  it "renders new guest form" do
    render

    assert_select "form[action=?][method=?]", guests_path, "post" do

      assert_select "input#guest_comment_id[name=?]", "guest[comment_id]"

      assert_select "input#guest_name[name=?]", "guest[name]"
    end
  end
end
