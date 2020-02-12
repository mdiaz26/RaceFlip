class AddImageUrlToCars < ActiveRecord::Migration[6.0]
  def change
    add_column :cars, :image_url, :string  
  end
end
