class Camper < ApplicationRecord
    has_many :registrations
    has_many :activities, through: :registrations

    def name_and_age
        self.name + " " + self.age.to_s
    end
end
