class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.text :title
      t.string :author
      t.string :cover

      t.timestamps
    end
  end
end
