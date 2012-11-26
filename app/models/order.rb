class Order < ActiveRecord::Base
  attr_accessible :customer_id, :destination, :driver, :number_of_passengers, :order_date, :order_time, :pickup_address, :pickup_date, :pickup_time, :vehicle_id
  belongs_to :customer
  validates :order_time, :order_date, :pickup_time, :pickup_date, :destination, :number_of_passengers, :presence => true
  
  validate :time_v
  
  
  
  def time_v
    
    if pickup_time.nil?
      return false
    end
    
    if order_date == pickup_date 
      diff_seconds = (pickup_time.to_i - order_time.to_i)
      diff_minutes = diff_seconds / 60
      if diff_minutes < 30
        errors.add(:pickup_time)
        return false
      end
    end
    return true
  end
end
