class RemoveBookId < ActiveRecord::Migration
  def up
  	remove_column :books, :book_id
  end

  def down
  	add_column :books, :book_id, :string
  end
end
