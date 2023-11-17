class AddChefToRestaurants < ActiveRecord::Migration[7.0]
  def change
    add_column :restaurants, :chef_name, :string
    add_column :restaurants, :chef_description, :text
  end
end
