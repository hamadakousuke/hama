class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :content
      t.text :content_detail
      t.integer :area_id
      t.timestamps null: false
    end
  end
end
