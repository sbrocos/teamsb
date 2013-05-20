FactoryGirl.define do
  factory :user do
    name                  "Sergio Brocos"
    email                 "sergiobrocos@gmail.com"
    password              "foobar"
    password_confirmation "foobar"
  end
  factory :admin do
    admin true
  end

  factory :app do
    name  "Lorem ipsim"
    description_short "Lorem ipsum dolor sit amet, consectetuer adipiscing elit."
    description_large "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat."
  end
end                                                                                                                                                                                                   "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat."