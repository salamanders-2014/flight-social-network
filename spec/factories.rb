# This will guess the User class
FactoryGirl.define do
  factory :user do
    first_name "John"
    last_name  "Doe"
    email "john@example.com"
  end

  factory :status do
  	user
  	text "Always Cheddar"
  end

  factory :post do
  	poster
  end

  factory :update do
  	post
  	text "Happy Cake Day!"
  end

  factory :photo do
  	post
  	description "Duct Taped Simon To The Pole"
  end

  factory :comment do
  	commenter
  	post
  	text "Happy Birthday Simon!"
  end

end