FactoryBot.define do
  factory :comment do
    name "MyString"
    comment "MyString"
    association :article, factory: :article
  end
end
