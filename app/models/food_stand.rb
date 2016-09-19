class FoodStand < ApplicationRecord
  has_attached_file :cover

  has_many :reviews, dependent: :destroy

  validates :name,
            :lat,
            :lng,
            :cover,
            :address,
            :schedule, presence: true

  validates_attachment_content_type :cover, content_type: /\Aimage\/.*\z/

  def position
    {
      lat: lat,
      lng: lng
    }
  end

  def position=(position)
    self.lng = position.fetch(:lng)
    self.lat = position.fetch(:lat)
  end
end
