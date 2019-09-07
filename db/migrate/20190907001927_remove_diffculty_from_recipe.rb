class RemoveDiffcultyFromRecipe < ActiveRecord::Migration[5.2]
  def change
    remove_column :recipes, :diffculty, :string
  end
end
