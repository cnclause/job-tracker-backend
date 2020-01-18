class User < ApplicationRecord
    has_many :job_trackers
    has_many :jobs, through: :job_trackers

end
