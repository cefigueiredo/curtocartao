# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  sequence(:email) { |i| "email#{i}@example.com" }

  factory :cliente do
    nome "Jonh Doe"
    email
    saldo 0.0
  end
end
