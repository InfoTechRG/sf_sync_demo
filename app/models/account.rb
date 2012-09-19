class Account < ActiveRecord::Base  
  attr_accessible :name, :phone
  
  salesforce_syncable :sync_attributes => { :Name => :name, :Phone => :phone }
end
