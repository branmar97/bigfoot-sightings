class Report < ApplicationRecord
    before_create :generate_unique_case_num

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

    def account_summary
        self.account.truncate(50)
    end 

    private

    def generate_unique_case_num
        begin
            self.case_num = 10.times.map { (0..9).to_a.sample }.join;
        end while self.class.exists?(case_num: case_num)
    end 
end
