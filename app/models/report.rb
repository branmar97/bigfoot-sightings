class Report < ApplicationRecord
    validates :case_num, presence: true
    validates :occurence, presence: { message: "Date can't be blank" }
    validates :city, presence: { message: "City can't be blank" }
    validates :state, presence: { message: "State can't be blank" }
    validates :vicinity, presence: { message: "Vicinity can't be blank" }
    validates :witnesses, presence: { message: "Please enter number of witnesses" }
    validates :evidence, presence: { message: "Evidence can't be blank" }
    validates :evidence, length: { minimum: 150,
        message: "Evidence description must be at least %{count} characters" }
    validates :account, presence: { message: "Details can't be blank" }
    validates :account, length: { minimum: 300,
        message: "Details must be at least %{count} characters" }
end
