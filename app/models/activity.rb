class Activity < ApplicationRecord
    has_many :registrations
    has_many :campers, through: :registrations

    def name_and_difficulty
        self.name + " | " + self.difficulty.to_s
    end
end
