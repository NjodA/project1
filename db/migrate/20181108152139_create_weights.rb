class CreateWeights < ActiveRecord::Migration[5.2]
  def change
    create_table :weights do |t|
      t.integer :amount
      t.integer :user_id
      t.date :date
      t.string :comment

      t.timestamps
    end
  end
end
