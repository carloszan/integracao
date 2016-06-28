FactoryGirl.define do
  factory :book do
    hour "2016-06-21 13:23:53"
    employee { FactoryGirl.create(:employee) }
    student nil
  end
end
