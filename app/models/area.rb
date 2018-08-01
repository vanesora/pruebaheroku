class Area < ApplicationRecord
    has_many :groups
    has_many :ideas
end
