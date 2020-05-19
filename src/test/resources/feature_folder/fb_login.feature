@login @e2e
  Feature: Login Test
  @regression
  Scenario Outline: Scenario outline: User Test valid Login  
    Given user launch browser
    And enter url
    When user details "<USERNAME>" and "<PASSWORD>"
    Then user click login
    And validate test
    Examples:
|URL|USERNAME|PASSWORD|
|https://www.facebook.com/|aks@gmail.com|ak123|
  @sanity  
  Scenario Outline: User Test valid Login  
    Given user launch browser
    And enter url
    When user details "<USERNAME>" and "<PASSWORD>"
    Then user click login
    And validate test
    Examples:
|URL|USERNAME|PASSWORD|
|https://www.facebook.com/|a@gmail.com|ak1|

    
    