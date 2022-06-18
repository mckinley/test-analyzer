FactoryBot.define do
  factory :blimp do
    name { 'Blimpy' }
    altitude { 1000 }


    after(:create) do |o|
      o.factory_bot_strategy = :create
    end

    after(:build) do |o|
      o.factory_bot_strategy = :build
    end

    after(:stub) do |o|
      o.factory_bot_strategy = :build_stubbed
    end
  end
end
