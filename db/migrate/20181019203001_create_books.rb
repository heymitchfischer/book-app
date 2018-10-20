class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :name
      t.text :description
      t.string :image_url
      t.integer :author_id

      t.timestamps
    end
  end
end
