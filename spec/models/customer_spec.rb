require 'spec_helper'

describe Customer do
  it {should have_many(:orders)}
  
  describe "testing validations" do

    it {should validate_presence_of(:first_name)}
    it {should validate_presence_of(:last_name)}
    it {should validate_presence_of(:address)}
    it {should validate_presence_of(:telephone_number)}
    it {should validate_presence_of(:city)}
  end
  
  describe "valid emails" do
  it {should allow_value("fred@fred.com").for(:email)}
  it {should allow_value("fred@qatar.cmu.edu").for(:email)}
  it {should allow_value("my_fred@fred.org").for(:email)}
  it {should allow_value("fred123@fred.net").for(:email)}
  it {should allow_value("my.fred@fred.gov").for(:email)}
  end

  describe "invalid emails" do
  it {should_not allow_value("fred").for(:email)}
  it {should_not allow_value("fred@fred,com").for(:email)}
  it {should_not allow_value("my fred@fred.com").for(:email)}
  end

  describe "valid phones" do
  it {should allow_value("97444991457").for(:telephone_number)}
  it {should allow_value("974-4499-1457").for(:telephone_number)}
  it {should allow_value("+97444991457").for(:telephone_number)}
  it {should allow_value("+974-4499-1457").for(:telephone_number)}
  end

  describe "invalid phones" do
  it {should_not allow_value("344-TEA-FOOD").for(:telephone_number)}
  end
  
  describe "Use factories for setup" do
    before(:each) do
    @zuhair = FactoryGirl.create(:customer)
    @sarah = FactoryGirl.create(:customer, :first_name => "Sarah")
    @haya = FactoryGirl.create(:customer, :first_name => "Haya", :telephone_number => "97444991456")
    end

    it "creates valid objects" do
    @zuhair.should be_valid
    @sarah.should be_valid
    @haya.should be_valid
    end

    it "has the right attribute information" do
    @zuhair.first_name.should == "Zuhair"
    @sarah.first_name.should == "Sarah"
    @haya.first_name.should == "Haya"
    end

    it "returns all the records in alphabatical order" do
    Customer.alphabetical.map{|o| o.first_name}.should == ["Haya", "Sarah", "Zuhair"]
    end

   it "returns the proper name correctly" do
   @zuhair.proper_name.should == "Zuhair Ghalib"
   end

   it "returns the name correctly" do
     @zuhair.name.should == "Ghalib, Zuhair"
   end

   it "should strip everything but numbers for the phone" do
   @haya.telephone_number.should == "97444991456"
   end
  end
  
  
end
