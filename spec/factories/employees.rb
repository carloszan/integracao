FactoryGirl.define do
  factory :employee do
    name "brunao atleticano"
    cpf "12345678912"
    tel "33322222"
    email "bodybuilder@bb.com"
    password "123456"
    password_confirmation "123456"
    #association :gym, factory: :gym
  end
end
