class CreateJobNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :job_notes do |t|
      t.references :job_tracker, null: false, foreign_key: true
      t.text :notes
      t.text :interview_questions
      t.text :prep_questions
      t.text :improvement

      t.timestamps
    end
  end
end
