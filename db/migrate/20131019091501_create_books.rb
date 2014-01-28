class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.integer :id
      t.string :name
      t.string :author
      t.integer :price

      t.timestamps
    end
  end
end
