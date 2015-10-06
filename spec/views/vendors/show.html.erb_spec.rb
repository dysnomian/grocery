require 'rails_helper'

RSpec.describe "vendors/show", type: :view do
  before(:each) do
    @vendor = assign(:vendor, Vendor.create!(
      :name => "Name",
      :location => "Location",
      :email => "Email",
      :phone_number => "Phone Number",
      :url => "Url",
      :status => "Status"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Phone Number/)
    expect(rendered).to match(/Url/)
    expect(rendered).to match(/Status/)
  end
end
