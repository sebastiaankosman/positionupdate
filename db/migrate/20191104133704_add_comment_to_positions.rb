class AddCommentToPositions < ActiveRecord::Migration[5.2]
  def change
    add_column :positions, :comment, :string
  end
end
