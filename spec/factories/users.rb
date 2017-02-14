FactoryGirl.define do
  factory :user do
    email       'sergey.voloshin@cleverua.com'
    password    'password'

    after(:create) { |user| user.confirm }
  end
end
