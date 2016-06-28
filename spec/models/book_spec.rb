require 'rails_helper'

RSpec.describe Book, type: :model do

  describe "presence" do
    it { validate_presence_of :hour }
    it { validate_presence_of :employee }
  end

  describe "hour" do
    it "cant be past time" do
      b = build(:book)

      b.hour = Time.now - 10

      expect(b).not_to be_valid

      b.hour = Time.now + 10

      expect(b).to be_valid
    end
  end
end
