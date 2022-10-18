class CreateSeekers < ActiveRecord::Migration[6.1]
  def change
    create_table :seekers do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :gender
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
