class CreateMenus < ActiveRecord::Migration[6.1]
  def change
    create_table :menus do |t|
      t.string :name_menu
      t.integer :rating
      t.string :ingredient
      t.string :not_ingredient

      t.timestamps
    end
  end
end
