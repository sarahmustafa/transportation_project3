class User < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation, :password_digest
    has_secure_password
    validates_presence_of :password, :on => :create



end
