require 'rails_helper'

RSpec.describe Employee, type: :model do
  describe "validations" do
    it { should validate_presence_of :name }
    it "has valid atributtes" do
      e = create(:employee)
      expect(e).to be_valid
    end
    it "has invalid attr" do
      e = build(:employee)
      e.name = nil
      expect(e).to be_invalid
      e.name = "a"*30

      e.tel = nil
      expect(e).to be_invalid
      e.tel = "3"*9

      e.cpf = nil
      expect(e).to be_invalid
      e.cpf = "a"*12

      expect(e).to be_valid
    end
  end
end
