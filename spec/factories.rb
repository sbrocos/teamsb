FactoryGirl.define do
  factory :user do
    name                  "Sergio Brocos"
    email                 "sergiobrocos@gmail.com"
    password              "foobar"
    password_confirmation "foobar"
  end
end