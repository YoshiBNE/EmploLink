class CreateLinks < ActiveRecord::Migration[6.1]
  def change
    create_table :links do |t|
      t.references :seeker, null: false, foreign_key: true
      t.references :employer, null: false, foreign_key: true
      t.boolean :confirmation

      t.timestamps
    end
  end
end
