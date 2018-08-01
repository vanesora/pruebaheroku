class Activity < ApplicationRecord
    has_many :activity_groups
    has_many :groups, :through => :activity_groups
end
