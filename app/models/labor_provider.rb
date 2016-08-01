class LaborProvider < ActiveRecord::Base
  belongs_to :registered_labor
  belongs_to :provider
end
