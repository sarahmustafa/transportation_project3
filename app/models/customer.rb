class Customer < ActiveRecord::Base
  attr_accessible :address, :city, :customer_id, :email, :first_name, :last_name, :telephone_number
  before_save :format_phone
   #has_many :orders
   validates :customer_id, :first_name, :last_name, :email, :telephone_number, :address, :city, :presence => true
   validates_format_of :email, :with => /^[\w]([^@\s,;]+)@(([\w-]+\.)+(com|edu|org|net|gov|mil|biz|info|qa))$/i, :message => "is not a valid format"
   validates_format_of :telephone_number, :with => /^(\+?\d{11}|\+?\d{3}?[-.]?\d{4}[-.]?\d{4})$/, :message => "should be 11 digits (country code needed) and delimited with dashes only"

   scope :alphabetical, order('last_name, first_name')
   
   def proper_name
     first_name + " " + last_name
   end

   def name
     last_name + ", " + first_name
   end
   
   private

   def format_phone
     telephone_number = self.telephone_number.to_s
     telephone_number.gsub!(/[^0-9]/, "")
     self.telephone_number = telephone_number
   end
end
