class AddColumnOrderToBoards < ActiveRecord::Migration[5.2]
  def change
    add_column :boards, :list_order, :string, array: true
  end
end
