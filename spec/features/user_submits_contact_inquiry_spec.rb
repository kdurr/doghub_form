require 'spec_helper'

feature %Q{'User submits a contact inquiry'} do
  # As a site visitor
  # I want to contact DogHub staff
  # So that I can tell them how awesome they are
  #
  # Acceptance Criteria
  #
  # * I must specify a valid email address
  # * I must specify a subject
  # * I must specify a description
  # * I must specify a first name
  # * I must specify a last name

  scenario 'records my comments and personal info if I specify valid information' do
    visit '/inquiries/new'
    fill_in 'Email', with: 'kristinaldurr@gmail.com'
    fill_in 'Subject', with: 'Hey there DogHub Staff'
    fill_in 'Description', with: 'You are the best staff eva!'
    fill_in 'First name', with: 'Tina'
    fill_in 'Last name', with: 'Durr'
    click_button 'Create Inquiry'
    expect(page).to have_content('Contact Inquiry successfully submitted!')
    expect(page).to have_content('Durr')
  end

  scenario 'does not record my inquiry and gives me an error if invalid' do
    prev_count = Inquiry.count
    visit '/inquiries/new'
    click_button 'Create Inquiry'
    expect(page).to have_content("Email can't be blank")
    expect(page).to have_content("Subject can't be blank")
    expect(page).to have_content("Description can't be blank")
    expect(page).to have_content("First name can't be blank")
    expect(page).to have_content("Last name can't be blank")
    expect(Inquiry.count).to eql(prev_count)
  end
end