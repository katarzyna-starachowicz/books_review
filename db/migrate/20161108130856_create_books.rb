class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.text :description
      t.string :cover
      t.date :published_at

      t.timestamps null: false
    end
  end
end
