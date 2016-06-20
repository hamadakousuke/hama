class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :cilent
      t.string :corporate_form
      t.string :contract_status
      t.string :pulling_down

      t.timestamps null: false
    end
  end
end
