class Signup < ApplicationRecord
    #associations 
    belongs_to :camper
    belongs_to :activity
    #validations
    validates :time, inclusion: {in: 0..23, message: "The hours must be between 0 and 23"}
end
