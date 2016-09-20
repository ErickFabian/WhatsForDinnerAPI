class FoodStandSerializer < ActiveModel::Serializer
  attributes :id,
             :name,
             :phone,
             :address,
             :website,
             :position,
             :schedule,
             :cover

  def cover
    ENV['assets_host'] + self.object.cover.url
  end
end
