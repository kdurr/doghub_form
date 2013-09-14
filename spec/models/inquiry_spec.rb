require 'spec_helper'

describe Inquiry do
  it { should have_valid(:email).when('kristinaldurr@gmail.com', 'enkadurr@gmail.com') }
  it { should_not have_valid(:email).when(nil, '') }

  it { should have_valid(:subject).when('I am a title line', 'I am your subject') }
  it { should_not have_valid(:subject).when(nil, '') }

  it { should have_valid(:description).when('This would go into a text box!', 'This would also go into a text box!') }
  it { should_not have_valid(:description).when(nil, '') }

  it { should have_valid(:first_name).when('Tina', 'Enka') }
  it { should_not have_valid(:first_name).when(nil, '') }

  it { should have_valid(:last_name).when('Durr', 'Takahira') }
  it { should_not have_valid(:last_name).when(nil, '') }

  # it "should have a phone number with length of no more than 10" do
  #   record = Artist.create(first_name: 'John', last_name: 'Smith', birthplace: 'Mexico', style_id: 3, phone_number: '7037649220', email: 'johnsmith@smith.com')
  #   expect(record.phone_number.length).to eql(10)
  # end
end
