class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.int :id
      t.varchar :name
      t.varchar :author
      t.int :price

      t.timestamps
    end
  end
end
