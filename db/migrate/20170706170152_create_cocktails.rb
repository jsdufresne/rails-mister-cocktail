class CreateCocktails < ActiveRecord::Migration[5.0]
  def change
    create_table :cocktails do |t|
      t.string :Cocktail
      t.string :name

      t.timestamps
    end
  end
end
