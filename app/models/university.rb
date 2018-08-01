class University < ApplicationRecord
    has_many :groups
    has_many :headquarters

    has_many :university_careers
    has_many :careers, :trough => :university_careers

end
