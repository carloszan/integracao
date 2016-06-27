require 'rails_helper'

RSpec.describe Book, type: :model do
  
  describe "presence" do
    it { validate_presence_of :hour }
    it { validate_presence_of :employee }
  end
end
