class Job < ApplicationRecord
    has_many :users, through: :jobTracker
end
