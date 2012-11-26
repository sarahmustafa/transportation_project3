require 'spec_helper'

describe Order do
  before(:each) do 
    @customer = FactoryGirl.create(:customer)
    @order = FactoryGirl.create(:order)
  end
  describe "associations " do 
    it "should have correct assoisications" do 
      should belong_to(:customer)
    end 
  end
  describe "factory creation" do 
    it "should create valid objects" do 
      @order.should be_valid
    end
  end
  describe "validations " do 
    it "should validate presence" do 
      should validate_presence_of(:order_time)
      should validate_presence_of(:order_date)
      should validate_presence_of(:pickup_time)
      should validate_presence_of(:pickup_date)
      should validate_presence_of(:destination)
      should validate_presence_of(:number_of_passengers)
    end
    
    it "should validates 30min time difference between order and pickup" do
      o = FactoryGirl.build(:order, :order_time => Time.now, :pickup_time => Time.now)
      o.should_not be_valid
      
    end
  end
end
