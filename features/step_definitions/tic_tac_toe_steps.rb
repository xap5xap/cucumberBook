Given(/^a board like this:$/) do |table|
  @board = table.raw
end

When(/^player x plays in row (\d+), column (\d+)$/) do |arg1, arg2|
  puts @board
  pending
end

Then(/^the board should look like this$/) do |table|
  # table is a Cucumber::Ast::Table
  pending # express the regexp above with the code you wish you had
end