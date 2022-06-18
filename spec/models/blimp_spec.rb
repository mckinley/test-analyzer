require 'rails_helper'

RSpec.describe Blimp, type: :model do
  describe 'analyze' do
    it 'sets the factory_bot_strategy' do
      expect(FactoryBot.create(:blimp).factory_bot_strategy).to be :create
      expect(FactoryBot.build(:blimp).factory_bot_strategy).to be :build
      expect(FactoryBot.build_stubbed(:blimp).factory_bot_strategy).to be :build_stubbed
    end

    it 'changes to build_stubbed' do
      blimp = FactoryBot.create(:blimp)
      expect(blimp.altitude).to be 1000
    end

    it 'changes to build' do
      blimp = FactoryBot.create(:blimp)
      expect([:create, :build]).to include blimp.factory_bot_strategy
    end

    it 'does not change' do
      FactoryBot.create(:blimp)
      expect(Blimp.first).to be
    end
  end
end
