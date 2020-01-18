class JobTracker < ApplicationRecord
  belongs_to :user
  belongs_to :job
  has_many :job_notes
end
