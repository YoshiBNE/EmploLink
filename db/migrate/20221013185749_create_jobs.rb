class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.references :employer, foreign_key: true, null: false
      t.references :category, foreign_key: true, null: true

      t.timestamps
    end
  end
end
