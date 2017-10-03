Given(/^I have deposited (#{CAPTURE_CASH_AMOUNT}) in my account$/) do |amount|
  # puts self
  my_account.deposit(amount)
  expect(my_account.balance).to eq(amount), "Expected the balance to be #{amount} but ot was #{my_account.balance}"
end
