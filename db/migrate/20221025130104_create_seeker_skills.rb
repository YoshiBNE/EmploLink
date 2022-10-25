class CreateSeekerSkills < ActiveRecord::Migration[6.1]
  def change
    create_table :seeker_skills do |t|
      t.references :seeker, null: false, foreign_key: true
      t.references :skill, null: false, foreign_key: true

      t.timestamps
    end
  end
end
