FactoryBot.define do
  factory :restaurant do
    name {'testname'}
    near_station {'teststation'}
    opening_id {2}
    closing_id {2}
    holiday {土、日、祝日}
    smoking {test}
    appeal {2}
    association :user 
    
    after(:build) do |restaurant|
      restaurant.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
    
  end
end
