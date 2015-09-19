class CreateJianbas < ActiveRecord::Migration
  def change
    create_table :jianbas do |t|
      t.string :title
      t.string :author
      t.date :date
      t.string :link

      t.timestamps null: false
    end
  end
end
