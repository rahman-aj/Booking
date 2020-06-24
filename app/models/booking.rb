class Booking < ApplicationRecord
  belongs_to :Mentor
  belongs_to :Mentee
end
