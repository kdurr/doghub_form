require 'spec_helper'

describe Inquiry do
  it { should have_valid(:email).when('kristinaldurr@gmail.com', 'enkadurr@gmail.com') }
  it { should_not have_valid(:email).when(nil, '', '13325y5') }

  it { should have_valid(:subject).when('I am a title line', 'I am your subject') }
  it { should_not have_valid(:subject).when(nil, '') }

  it { should have_valid(:description).when('This would go into a text box!', 'This would also go into a text box!') }
  it { should_not have_valid(:description).when(nil, '') }

  it { should have_valid(:first_name).when('Tina', 'Enka') }
  it { should_not have_valid(:first_name).when(nil, '') }

  it { should have_valid(:last_name).when('Durr', 'Takahira') }
  it { should_not have_valid(:last_name).when(nil, '') }
end
