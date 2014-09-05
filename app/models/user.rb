class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :email, :age, :gender

  validates_uniqueness_of :email
end
