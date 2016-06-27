require 'rails_helper'

RSpec.describe Gym, type: :model do
  
  describe "validations" do
    it { validate_presence_of :name }
    it { validate_presence_of :cnpj }
    it { validate_presence_of :tel }
    it "valid attr" do
      g = create(:gym)
      expect(g).to be_valid
    end
  end
end
