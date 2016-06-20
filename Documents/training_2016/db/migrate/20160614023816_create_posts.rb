class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :content
      t.text :content_text
      t.string :date_date


      t.timestamps null: false
    end
  end
end
