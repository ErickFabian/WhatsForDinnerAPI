class CreateFoodStands < ActiveRecord::Migration[5.0]
  def change
    create_table :food_stands do |t|
      t.decimal :lat, {:precision=>10, :scale=>6}
      t.decimal :lng, {:precision=>10, :scale=>6}
      t.string :name
      t.string :address
      t.text :schedule

      t.timestamps
    end
  end
end
