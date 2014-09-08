class Message < ActiveRecord::Base
   attr_accessible :msg, :group
   belongs_to :group
end
