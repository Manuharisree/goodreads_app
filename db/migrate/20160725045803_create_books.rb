class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :book_id
      t.string :content
      t.string :author

      t.timestamps
    end
  end
end
