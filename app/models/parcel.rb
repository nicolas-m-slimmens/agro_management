class Parcel < ActiveRecord::Base
  belongs_to :field
  belongs_to :crop
  belongs_to :soil_survey
end
