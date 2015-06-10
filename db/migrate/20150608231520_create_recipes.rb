class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :instructions_url
      t.string :image
      t.integer :meal_id

      t.timestamps

    end
  end
end
