# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :inquiry do
    email "kristinaldurr@gmail.com"
    subject "Whoo DogHub!"
    description "You are the best website in the entire world!"
    first_name "Tina"
    last_name "Durr"
  end
end
