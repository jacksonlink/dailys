class Early < ApplicationRecord
    belongs_to :user

    validates_presence_of :schedule
    validates_presence_of :user_id
end