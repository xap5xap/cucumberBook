class Account
 def deposit(amount)
  @balance=amount
 end

 def balance
  @balance
 end
end

class Teller
  def withdraw_from(account, amount)
  end
end

CAPTURE_CASH_AMOUNT = Transform(/^\$(\d+)$/) do |number|
  number.to_i
end

Given(/^I have deposited (#{CAPTURE_CASH_AMOUNT}) in my account$/) do |amount|
  my_account = Account.new
  my_account.deposit(amount)
  expect(my_account.balance).to eq(amount), "Expected the balance to be #{amount} but ot was #{my_account.balance}"
end

When(/^I withdraw (#{CAPTURE_CASH_AMOUNT})$/) do |amount|
  teller = Teller.new
  teller.withdraw_from(my_account, amount)
end

Then(/^\$(\d+) should be dispensed$/) do |amount|
  pending ("How do we validate that cash was dispensed?")
end