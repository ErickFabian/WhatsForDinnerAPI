class ReviewSerializer < ActiveModel::Serializer
  attributes :id,
             :rate,
             :owner,
             :created_at,
             :description,
             :food_stand_id
end
