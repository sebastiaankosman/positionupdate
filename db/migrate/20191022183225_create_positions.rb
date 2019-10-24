class CreatePositions < ActiveRecord::Migration[5.2]
  def change
    create_table :positions do |t|
      t.string :tripnumber
      t.string :activity
      t.string :date
      t.string :time

      t.timestamps
    end
  end
end
