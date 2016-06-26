require 'rails_helper'

RSpec.describe Student, type: :model do
    
    describe "validations" do
    it { validate_presence_of :name }
    it { validate_presence_of :email }
    it { validate_presence_of :gym }
  end
end
