class CreateTravels < ActiveRecord::Migration[5.1]
  def change
    create_table :travels do |t|
      t.string :name
      t.string :phone
      t.date :dateFrom
      t.date :dateTo
      t.string :origin
      t.string :destination
      t.integer :numberp

      t.timestamps
    end
  end
end
