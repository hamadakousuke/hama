class CreateJobOfferts < ActiveRecord::Migration
  def change
    create_table :job_offerts do |t|
      t.string  :name

      t.timestamps null: false
    end
  end
end
