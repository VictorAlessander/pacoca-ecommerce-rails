require 'rails_helper'

RSpec.describe "phones/new", type: :view do
  before(:each) do
    assign(:phone, Phone.new(
      :phone => "MyString",
      :person => nil
    ))
  end

  it "renders new phone form" do
    render

    assert_select "form[action=?][method=?]", phones_path, "post" do

      assert_select "input[name=?]", "phone[phone]"

      assert_select "input[name=?]", "phone[person_id]"
    end
  end
end
