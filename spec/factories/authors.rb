FactoryGirl.define do
  factory :author do
    first_name { Faker::Name.first_name }
    last_name  { Faker::Name.last_name }
    avatar     { Faker::File.file_name('/avatars', 'gombrowicz', 'jpg') }
    biography  { Faker::Lorem.sentence(3, true) }
  end
end
