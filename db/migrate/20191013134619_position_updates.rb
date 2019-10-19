class PositionUpdates < ActiveRecord::Migration[5.2]
  def change
     create_table :PositionUpdates do |t|
      t.string :activity
      t.integer :date
      t.integer :time

      t.timestamps
  end
end
end
