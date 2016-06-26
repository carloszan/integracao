require 'rails_helper'

RSpec.describe Employee, type: :model do
  
  describe "validations" do
    it { validate_presence_of :name }
    it { validate_presence_of :tel }
    it { validate_presence_of :cpf }
    it "has valid atributtes" do
      e = create(:employee)
      expect(e).to be_valid
    end
  end
end
