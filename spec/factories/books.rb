FactoryGirl.define do
  factory :book do
    title        { Faker::Lorem.word }
    description  { Faker::Lorem.sentence(3, true) }
    cover        { Faker::File.file_name('/covers', 'ferdydurke', 'jpg') }
    published_at { Faker::Date.between(100.years.ago, Date.today) }
  end
end
