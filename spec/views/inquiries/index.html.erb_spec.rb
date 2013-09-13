require 'spec_helper'

describe "inquiries/index" do
  before(:each) do
    assign(:inquiries, [
      stub_model(Inquiry,
        :email => "Email",
        :subject => "Subject",
        :description => "MyText",
        :first_name => "First Name",
        :last_name => "Last Name"
      ),
      stub_model(Inquiry,
        :email => "Email",
        :subject => "Subject",
        :description => "MyText",
        :first_name => "First Name",
        :last_name => "Last Name"
      )
    ])
  end

  it "renders a list of inquiries" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Subject".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
  end
end
