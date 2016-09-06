class FoodStandSerializer < ActiveModel::Serializer
  attributes :id,
             :name,
             :address,
             :position,
             :schedule,
             :cover

  def cover
    ENV['assets_host'] + self.object.cover.url
  end
end
