class User < ApplicationRecord
    has_many :jobs, through: :jobTracker

end
