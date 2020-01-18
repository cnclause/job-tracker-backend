class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.string :company
      t.string :salary_range
      t.string :job_title
      t.text :job_description
      t.string :recruiter
      t.text :about_company
      t.string :tech_stack
      t.text :extras

      t.timestamps
    end
  end
end
