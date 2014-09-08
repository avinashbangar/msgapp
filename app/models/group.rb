class Group < ActiveRecord::Base
  attr_accessible :name, :description
  
  validates :name, uniqueness: true, presence: true
  
  has_many :messages
end
