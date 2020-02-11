class ChangeColumnDefaultUsers < ActiveRecord::Migration[6.0]
  def change
    change_column_default(:users, :wins, 0)
    change_column_default(:users, :losses, 0)
    change_column_default(:users, :balance, 250000)
  end
end
