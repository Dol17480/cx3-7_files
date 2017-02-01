# def get_account_name(account)
#   account[:holder_name]
# end

class BankAccount

  attr_accessor :holder_name, :amount, :type

  @@bank_name = "HSBC"

def initialize(holder_name, amount, type)
  @holder_name = holder_name
  @amount = amount
  @type = type
end

def pay_interest
  @amount += 10
  end

def self.bank_name
  return @@bank_name
end

end

# def holder_name
#   return @holder_name
# end

# def set_holder_name(name)
#   @holder_name = name
# end

# def amount
#   return @amount
# end

# def type
#   return @type
# end

# end