class CreateSeekers < ActiveRecord::Migration[6.1]
  def change
    create_table :seekers do |t|
      t.string :name
      t.integer :age
      t.string :email
      t.integer :phone
      t.string :gender

      t.timestamps
    end
  end
end
