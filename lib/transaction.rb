class Transaction

    attr_accessor :amount, :type
    attr_reader :date, :status

    def initialize( amount:, type:  )
        @amount = amount
        @type = type
        @status = "pending"
        @date = Time.now
    end

    def update_status status
        self.status = status
    end

end