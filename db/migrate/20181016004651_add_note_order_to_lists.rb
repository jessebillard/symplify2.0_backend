class AddNoteOrderToLists < ActiveRecord::Migration[5.2]
  def change
    add_column :lists, :note_order, :string, array: true
  end
end
