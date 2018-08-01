class Group < ApplicationRecord
    has_many :user_groups
    has_many :users, :through => :user_groups

    belongs_to :area

    has_many :activity_groups
    has_many :activities, :through => activity_groups

    belongs_to :university
end
