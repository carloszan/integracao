require 'rails_helper'

RSpec.describe Gym, type: :model do
  describe "validations" do
    it "valid attr" do
      g = create(:gym)
      expect(g).to be_valid
    end
    it "has invalid attr" do
      g = build(:gym)
      g.name = nil
      g.cnpj = nil
      g.tel  = nil
      expect(g).to be_invalid
    end
  end
end
