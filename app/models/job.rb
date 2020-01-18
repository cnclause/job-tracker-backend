class Job < ApplicationRecord
    has_many :job_trackers
    has_many :users, through: :job_trackers
end
