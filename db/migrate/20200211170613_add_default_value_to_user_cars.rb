class AddDefaultValueToUserCars < ActiveRecord::Migration[6.0]
  def change
    change_column_default(:user_cars, :condition, 100)
  end
end
