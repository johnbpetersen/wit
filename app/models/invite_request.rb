class InviteRequest < ActiveRecord::Base
  validates_presence_of :email
  validates_uniqueness_of :email
  
  attr_accessible :email
end
