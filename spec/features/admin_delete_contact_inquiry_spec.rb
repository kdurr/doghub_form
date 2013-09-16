require 'spec_helper'

feature 'Admin can delete inquiries', %Q{
  As an Admin
  I want to delete an inquiry
  So that I can remove spam or other undesirable inquiries
  } do
  # Acceptance Criteria
  # * I can remove an item from the listing of contact inquiries

  scenario 'use the destroy link to remove a contact inquiry' do
    FactoryGirl.create(:inquiry)
    current_count = Inquiry.count
    visit '/inquiries'
    click_on 'Destroy'
    expect(Inquiry.count).to eql(current_count - 1)
  end
end