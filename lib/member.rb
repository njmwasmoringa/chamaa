
require_relative 'user'

class Member < User
  attr_reader :memberID
  attr_accessor :memberStatus
  def initialize(name:, email:, phone:, memberID:, memberStatus:)
    super(name, email, phone);
    @memberID = memberID
    @memberStatus = memberStatus
  end

  # type:
  def deposit amount, account_number

    account = Account.find_account_by_member(self)
    if !account
      "Please create an account"
    end

    if account.account_number != account_number
      "Account does not exists"
    end

    account.credit(amount);

  end

end

# binding.pry