class User < ApplicationRecord
    belongs_to :usertype
    has_many :user_groups
    has_many :groups, :through => :user_groups
end
