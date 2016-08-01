class SoilSurvey < ActiveRecord::Base
  belongs_to :parcel
  belongs_to :provider
end
