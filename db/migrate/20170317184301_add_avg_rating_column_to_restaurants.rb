class AddAvgRatingColumnToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :avgrating, :integer
  end
end
