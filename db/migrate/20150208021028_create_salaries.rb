class CreateSalaries < ActiveRecord::Migration
  def change
    create_table :salaries do |t|
      t.date :date
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :salaries, :users
  end
end
