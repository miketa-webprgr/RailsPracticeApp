# 今やっと気づいた。completed_onを作ったから、statusという項目が不要だ。
# 技術不足なので、表示されるか確認するためのデータを手動で用意してみた。

FactoryBot.define do
  # 未精算の申請データ
  factory :uncompleted_bill, class: Bill do 
    status { false }
    name { "部員A" }
    paid_on { "2020-05-21" }
    item { "大会参加費" }
    description { "金ないので早めの返金、お願いします！！！" }
    price { 20000 }
    completed_on { nil }
  end
  # 精算済のデータ
  factory :completed_bill, class: Bill do 
    status { true }
    name { "部員B" }
    paid_on { "2020-05-01" }
    item { "サッカーボール" }
    description { "旅行で不在にしているので、帰ってきてからで大丈夫です" }
    price { 6000 }
    completed_on { "2020-05-11" }
  end
end
