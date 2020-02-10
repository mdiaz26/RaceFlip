class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :wins
      t.integer :losses
      t.integer :balance
      t.timestamps
    end
  end
end
