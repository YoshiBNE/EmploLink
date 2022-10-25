class CreateEmployers < ActiveRecord::Migration[6.1]
  def change
    create_table :employers do |t|
      t.string :company_name
      t.string :state
      t.integer :phone
      t.string :email
      t.string :homepage

      t.timestamps
    end
  end
end
