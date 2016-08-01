class AppliedPhytosanitaryProduct < ActiveRecord::Base
  belongs_to :provider
  belongs_to :registered_supply
  belongs_to :phytosanitary_treatment
end
