FactoryBot.define do
  factory :bill do
    status { false }
    name { "MyString" }
    date { "2020-05-30" }
    item { "MyString" }
    description { "MyText" }
    price { 1 }
  end
end
