class AddPhoneAndWebsiteToFoodStands < ActiveRecord::Migration[5.0]
  def change
    add_column :food_stands, :phone, :string
    add_column :food_stands, :website, :string
  end
end
