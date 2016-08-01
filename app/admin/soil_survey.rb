ActiveAdmin.register SoilSurvey do
  permit_params :organic_carbon, :organic_material, :total_nitrogen, :nitrate, :nitrate_nitrogens, :comparable_fosforo, :calcium, :magnesium, :ph, :carbon_nitrogen, :calcium_magnesium, :conductivity, :sulfur, :hardness_of_water, :water_ph

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
