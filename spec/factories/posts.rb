FactoryBot.define do
  factory :post do
    content { Faker::Quote.most_interesting_man_in_the_world }
  end
end
