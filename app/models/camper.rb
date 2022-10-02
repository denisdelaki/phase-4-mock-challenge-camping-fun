class Camper < ApplicationRecord
    #validation 
    validates :name, presence: true
    validates :age, inclusion: {in: 8..18, message: "The camper must be between 8 and 18"}
    #associations
    has_many :signups 
    has_many :activities, through: :signups
end
