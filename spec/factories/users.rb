require 'faker'


FactoryGirl.define do
  factory :user do
    email {Faker::Internet.email}
    password 't3stp4ssw0rd'
  end
end
