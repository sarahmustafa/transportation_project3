FactoryGirl.define do

  factory :vehicle do
    make "Nissan"
    model "Camper"
    color "Red"
    license_plate "1234456"
    description "Relevant description"
  end

  factory :customer do
    first_name "Zuhair"
    last_name "Ghalib"
    address "PO BOX 234866"
    city "Doha"
    email "jdan@gmail.com"
    telephone_number "97444991456"
  end
  factory :order do 
    order_time Time.now
    order_date 11-11-2012
    pickup_time Time.now + 1.hour
    pickup_date 11-11-2012
    pickup_address "here"
    destination "there"
    number_of_passengers 3
    driver false
    association :customer
  end
    
  factory :user do
    email "sarahmustafa93@gmail.com"
    password "mmngmhs"
    password_confirmation "mmngmhs"
  end    
end