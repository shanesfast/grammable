FactoryBot.define do
  factory :comment do
    
  end

  factory :user do
    sequence :email do |n|
      "dummyEmail#{n}@gmail.com"
    end
    password { "secretPassword" }
    password_confirmation { "secretPassword" }
  end

  factory :gram do
    message { "hello" }
    picture { Rack::Test::UploadedFile.new(Rails.root.join('spec', 'fixtures', 'picture.jpg').to_s, 'image/jpg') }
    association :user
  end
end
