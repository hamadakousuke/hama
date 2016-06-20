class CreateOofficeHours < ActiveRecord::Migration
  def change
    create_table :ooffice_hours do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
