class Career < ApplicationRecord
    has_many :university_careers
    has_many :universities, :through => :university_careers

    belongs_to :faculty
end
