class Registration < ApplicationRecord
  belongs_to :camper
  belongs_to :activity
end
