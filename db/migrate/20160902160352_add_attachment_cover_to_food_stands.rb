class AddAttachmentCoverToFoodStands < ActiveRecord::Migration
  def self.up
    change_table :food_stands do |t|
      t.attachment :cover
    end
  end

  def self.down
    remove_attachment :food_stands, :cover
  end
end
