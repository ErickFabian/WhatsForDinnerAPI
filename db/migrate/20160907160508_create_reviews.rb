class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.references :food_stand, foreign_key: true
      t.string :owner
      t.text :description
      t.integer :rate

      t.timestamps
    end
  end
end
