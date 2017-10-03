Feature: Widthdraw Fixed Amoount

The "Widthdraw Cash" menu contains several fixed amounts to 
speed up transactions for users

Scenario Outline: Widthdraw fixed amount
Given I have <Balance> in my account
When I choose to withdraw the fixed ammount of <Withdrawal>
Then I should receive <Received> cash
And the balance of my account should be <Remaining>

Examples:
| Balance | Widthdrawal | Received | Remaining |
| $500 | $50 | $50 | $450 |
| $500 | $100 | $100 | $400 |
| $500 | $200 | $200 | $30c0 |
