class CreateReadings < ActiveRecord::Migration[6.1]
  def change
    create_table :readings do |t|
      t.date :start_date
      t.date :end_date
      t.integer :rating
      t.string :status
      t.references :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
