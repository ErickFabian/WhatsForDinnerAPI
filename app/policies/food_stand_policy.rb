class FoodStandPolicy < ApplicationPolicy
  def permitted_attributes
    [
      :name,
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