class AddIndexToBooksTitle < ActiveRecord::Migration
  def change
  	add_index :books, :title, unique: true
  end
end
