FactoryGirl.define do
  factory :authentication_token do
    body "MyString"
    user nil
    last_used_at "2016-09-01 10:25:52"
    ip_address "MyString"
    user_agent "MyString"
  end
end
