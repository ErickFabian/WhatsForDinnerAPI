class FoodStandPolicy < ApplicationPolicy
  def permitted_attributes
    [
      :name,
      :phone,
      :website,
      :cover,
      :address,
      :schedule,
      position: [
        :lat,
        :lng
      ]
    ]
  end
end