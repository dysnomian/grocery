require 'rails_helper'

RSpec.describe "vendors/edit", type: :view do
  before(:each) do
    @vendor = assign(:vendor, Vendor.create!(
      :name => "MyString",
      :location => "MyString",
      :email => "MyString",
      :phone_number => "MyString",
      :url => "MyString",
      :status => "MyString"
    ))
  end

  it "renders the edit vendor form" do
    render

    assert_select "form[action=?][method=?]", vendor_path(@vendor), "post" do

      assert_select "input#vendor_name[name=?]", "vendor[name]"

      assert_select "input#vendor_location[name=?]", "vendor[location]"

      assert_select "input#vendor_email[name=?]", "vendor[email]"

      assert_select "input#vendor_phone_number[name=?]", "vendor[phone_number]"

      assert_select "input#vendor_url[name=?]", "vendor[url]"

      assert_select "input#vendor_status[name=?]", "vendor[status]"
    end
  end
end
