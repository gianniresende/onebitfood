class CreateRates < ActiveRecord::Migration[6.1]
  def change
    create_table :rates do |t|
      t.string :review
      t.references :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
