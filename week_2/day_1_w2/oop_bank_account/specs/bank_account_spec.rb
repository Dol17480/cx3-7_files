require('minitest/autorun')
require('minitest/rg')
require_relative('../bank_account')

class TestBankAccount < Minitest::Test

  def test_get_account_name
    bank_account = BankAccount.new("Jay", 500, "business")
    assert_equal("Jay", bank_account.holder_name)
    assert_equal(500, bank_account.amount)
    assert_equal("business", bank_account.type)
    # account = {
    #   holder_name: "Jay",
    #   amount: 500,
    #   type: "business"
    # }
    # assert_equal("Jay", get_account_name(account))
  end

  def test_account_amount
    bank_account = BankAccount.new("Jay", 500, "business")
    assert_equal(500, bank_account.amount)
end

  def test_account_type
    bank_account = BankAccount.new("Jay", 500, "business")
    assert_equal("business", bank_account.type)
end

def test_set_holder_name
  bank_account = BankAccount.new("Jay", 500, "business")
    bank_account.holder_name = "Valerie"
    assert_equal("Valerie", bank_account.holder_name)
end

def test_pay_interest
  jays_bank_account = BankAccount.new("Jay", 500, "personal")
  jays_bank_account.pay_interest()
  assert_equal(510, jays_bank_account.amount)
end

def test_bank_name
  name = BankAccount.bank_name
  assert_equal("HSBC", name)
end
















end