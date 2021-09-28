class AddDetailsToRecipes < ActiveRecord::Migration[6.1]
  def change
    add_column :recipes, :details, :text
  end
end
