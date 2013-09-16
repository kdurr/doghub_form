require 'spec_helper'

feature 'Admin browses contact inquiries', %Q{
    As an admin
    I want to review contact inquiries
    So that I can respond or take action
    } do
  # Acceptance Criteria
  #
  # * I can see a list of all contact inquiries

  scenario 'shows all of the inquiries submitted by users' do
    visit '/inquiries'
    click_link 'New Inquiry'
    expect(page).to have_content(@inquiries)
  end
end