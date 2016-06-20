class CreateJobOffers < ActiveRecord::Migration
  def change
    create_table :job_offers do |t|
      t.string :name
      t.integer :job_type_id
      t.integer :job_type_detail_id
      t.integer :employment_id
      t.integer :characteristic_id
      t.integer :treatment_id
      t.integer :office_hour_id
      t.integer :experience_id

      t.timestamps null: false
    end
  end
end
