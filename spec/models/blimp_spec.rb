require 'rails_helper'

RSpec.describe Blimp, type: :model do
  describe 'analyze' do
    it 'creates a blimp' do
      blimp = FactoryBot.create(:blimp)
      expect(blimp.altitude).to be 1000
    end
  end
end
