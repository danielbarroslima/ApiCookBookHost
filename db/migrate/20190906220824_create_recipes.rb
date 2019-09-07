class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :recipe_type
      t.string :cook_method
      t.string :ingredients
      t.string :cuisine
      t.string :diffculty
      t.integer :cook_time

      t.timestamps
    end
  end
end
