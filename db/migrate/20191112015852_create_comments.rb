class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :author
      t.integer :blog_post
      t.text :text
      t.timestamp :date
      t.timestamps

      t.index :blog_post
    end
  end
end
