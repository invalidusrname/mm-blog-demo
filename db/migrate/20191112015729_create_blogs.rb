class CreateBlogs < ActiveRecord::Migration[6.0]
  def change
    create_table :blogs do |t|
      t.string :author
      t.string :title
      t.text :text
      t.string :images
      t.timestamp :published_at
      t.boolean :publish

      t.timestamps
    end
  end
end
