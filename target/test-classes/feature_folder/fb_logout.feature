@logout 
  Feature: Logout Test
  @regression
  Scenario Outline: User Test valid Logout  
   Given user launch browser
    And enter url
    When user details "<USERNAME>" and "<PASSWORD>"
    Then user click login
    And validate test
   Examples:
|URL|USERNAME|PASSWORD|
|https://www.facebook.com/|akshayakumar@gmail.com|ak123|
 @sanity
  Scenario Outline: User Test valid Logout  
    Given user launch browser
    And enter url
    When user details "<USERNAME>" and "<PASSWORD>"
    Then user click login
    And validate test
    Examples:
|URL|USERNAME|PASSWORD|
|https://www.facebook.com/|abc@gmail.com|ak1|
