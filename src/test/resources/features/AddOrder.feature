Feature: Add order
  As user, I want to be able to create new orders


  Scenario: Create order
    Given user is on the login page
    And user log in
    And user navigates to "Order" page
    When user enter product information:
      | Product     | Quantity | Price per unit | Discount |
      | ScreenSaver | 12       | 20             | 10%      |
    And user click calculate button
    Then user should verify that total 216 is display
    When user enters address information
      | Customer name | Street     | City     | State    | Zip   |
      | Test User     | 5th Avenue | New York | New York | 10011 |
    And user enters payment information
      | Card | Card Nr    | Expire date(mm/yy) |
      | Visa | 1234567890 | 04/25              |
    And user clicks on process button
    And user navigates to "View all orders" page
    Then user verifies that order is displayed
      | Name      | Product     |
      | Test User | ScreenSaver |
