class CreateInterviews < ActiveRecord::Migration[6.1]
  def change
    create_table :interviews do |t|
      t.integer :seeker_id
      t.integer :employer_id
      t.datetime :interview_date

      t.timestamps
    end
  end
end
