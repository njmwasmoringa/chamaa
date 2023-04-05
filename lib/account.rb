class Account
    attr_reader :member, :account_number
    attr_accessor :total_savings;
    attr_reader :transactions

    @@all=[]
    def initialize(member:, account_number:, initialAmount: 0)

        @member = member
        @account_number = account_number
        @total_savings = 0

        @transactions = []

        @@all << self
    end

    def self.find_account_by_member member

        self.all.find { |account| account.member.memberID == member.memberID }

    end

    def self.all
        @@all
    end

    def credit amount
        self.total_savings += amount
        self.transactions << Trasaction.new(amount, "D")
    end

    def debit amount
        select.total_savings -= amount;
        self.transactions << Trasaction.new(amount, "W")
    end

end