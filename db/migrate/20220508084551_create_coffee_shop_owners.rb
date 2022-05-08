class CreateCoffeeShopOwners < ActiveRecord::Migration[7.0]
  def change
    create_table :coffee_shop_owners do |t|
      t.references :coffee_shop, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
