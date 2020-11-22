FactoryBot.define do
    factory :user do
      nickname              {Faker::Japanese::Name.last_name}
      email                 {Faker::Internet.free_email}
      password              {"aaa1111"}
      password_confirmation { password }
    end
  end