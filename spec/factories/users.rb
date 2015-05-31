FactoryGirl.define do

  factory :user do
    email "email@test.com"
    password "qwerty123"
    admin false
  end

  factory :admin, class: User do
    email "admin@test.com"
    password "qwerty123"
    admin true
  end

end
