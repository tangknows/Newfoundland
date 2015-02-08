class AddAmountToSalaries < ActiveRecord::Migration
  def change
    add_column :salaries, :amount, :integer
  end
end
