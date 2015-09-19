class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :content
      t.string :author
      t.date :date
      t.string :URL

      t.timestamps null: false
    end
  end
end
