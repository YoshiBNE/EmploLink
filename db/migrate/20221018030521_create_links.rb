class CreateLinks < ActiveRecord::Migration[6.1]
  def change
    create_table :links do |t|
      t.references :seeker, foreign_key: true
      t.references :employer, foreign_key: true
      t.boolean :confirmed, default: false, null: false
      t.datetime :interview_date

      t.timestamps
    end
  end
end
