FactoryGirl.define do
  factory :service do
    name 'service_name'
    description 'Some random service'
    price_per_hour 100.00
  end

  factory :veteran do
    service {FactoryGirl.create(:service)}
    name 'veteran_name'
    contact_number 1024
    expected_service_minutes 20
    expected_travel_minutes_before 20
  end

  factory :veteran_slot do
    veteran {FactoryGirl.create(:veteran)}
    start_time '2015-4-4 00:00:00'
    end_time '2015-4-4 00:15:00'
    is_reserved true
  end

end