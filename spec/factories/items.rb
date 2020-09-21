FactoryBot.define do
  factory :item do
    name             {"a"}
    price            {"1000"}
    explain          {"aa"}
    cate_id          {"2"}
    state_id         {"2"}
    burden_id        {"2"}
    ship_form_id     {"2"}
    shipping_days_id {"2"}
    user

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
