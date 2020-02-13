class AddOwnedToUserCars < ActiveRecord::Migration[6.0]
  def change
    add_column :user_cars, :owned, :boolean, :default => true
  end
end
