class User < ApplicationRecord
    belongs_to :team

    has_many :early
    has_many :blate
end
