require 'spec_helper'

describe Vehicle do
    it "should have proper validations" do
  	should validate_presence_of(:model)
  	should validate_presence_of(:make)
  	should validate_presence_of(:color)
  	should validate_presence_of(:license_plate)
  	should validate_presence_of(:description)
  end
end
