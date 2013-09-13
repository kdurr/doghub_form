require 'spec_helper'

describe "inquiries/show" do
  before(:each) do
    @inquiry = assign(:inquiry, stub_model(Inquiry,
      :email => "Email",
      :subject => "Subject",
      :description => "MyText",
      :first_name => "First Name",
      :last_name => "Last Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email/)
    rendered.should match(/Subject/)
    rendered.should match(/MyText/)
    rendered.should match(/First Name/)
    rendered.should match(/Last Name/)
  end
end
