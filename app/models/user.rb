class User < ApplicationRecord
    belongs_to :team

    has_many :early
    has_many :blate

    validates_presence_of :name
    validates_presence_of :email
    validates_presence_of :team
end
