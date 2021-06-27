FactoryBot.define do
  factory :user do
    name { "sampleuser" }
    sequence(:email) { |n| "sample#{n}@example.com" }
    password { "samplepassword" }
    password_confirmation { password }
  end

  factory :duplicate_email_user, class: User do
    name { "sampleuser" }
    email { "sample@example.com" }
    password { "samplepassword" }
    password_confirmation { password }
  end
end
