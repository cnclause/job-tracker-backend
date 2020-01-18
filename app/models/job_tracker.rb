class JobTracker < ApplicationRecord
  belongs_to :user
  belongs_to :job
  has_many :jobNotes
end
