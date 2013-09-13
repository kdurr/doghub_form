require 'spec_helper'

describe "inquiries/edit" do
  before(:each) do
    @inquiry = assign(:inquiry, stub_model(Inquiry,
      :email => "MyString",
      :subject => "MyString",
      :description => "MyText",
      :first_name => "MyString",
      :last_name => "MyString"
    ))
  end

  it "renders the edit inquiry form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", inquiry_path(@inquiry), "post" do
      assert_select "input#inquiry_email[name=?]", "inquiry[email]"
      assert_select "input#inquiry_subject[name=?]", "inquiry[subject]"
      assert_select "textarea#inquiry_description[name=?]", "inquiry[description]"
      assert_select "input#inquiry_first_name[name=?]", "inquiry[first_name]"
      assert_select "input#inquiry_last_name[name=?]", "inquiry[last_name]"
    end
  end
end
