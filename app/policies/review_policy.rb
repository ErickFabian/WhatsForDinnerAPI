class ReviewPolicy < ApplicationPolicy
  def permitted_attributes
    [
      :rate,
      :owner,
      :description,
      :food_stand_id
    ]
  end
end