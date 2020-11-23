FactoryBot.define do
  factory :post do
    image                 {}
    title                 {"イラスト"}
    text                  {"フリー素材として使ってください"}
    association :user
  end
end