class CreateEmployers < ActiveRecord::Migration[6.1]
  def change
    create_table :employers do |t|
      t.string :company_name
      t.string :email
      t.string :state
      t.string :phone

      t.timestamps
    end
  end
end
