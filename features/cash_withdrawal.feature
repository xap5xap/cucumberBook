Feature: Cash Widthdrawal
Scenario: Successful widthdrawal from an account in credit
Given I have deposited $100 in my account
When I withdraw $20
Then $20 should be dispensed
