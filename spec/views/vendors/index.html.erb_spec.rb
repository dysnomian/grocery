require 'rails_helper'

RSpec.describe "vendors/index", type: :view do
  before(:each) do
    assign(:vendors, [
      Vendor.create!(
        :name => "Name",
        :location => "Location",
        :email => "Email",
        :phone_number => "Phone Number",
        :url => "Url",
        :status => "Status"
      ),
      Vendor.create!(
        :name => "Name",
        :location => "Location",
        :email => "Email",
        :phone_number => "Phone Number",
        :url => "Url",
        :status => "Status"
      )
    ])
  end

  it "renders a list of vendors" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Phone Number".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
  end
end
