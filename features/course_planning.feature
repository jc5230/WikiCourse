Feature: search for courses by track requirements
  As a MSCS student
  So that I can find courses that fulfill my degree requirement
  I want to lookup courses based on track requirements

  Background: courses in database
    Given the following courses exist:

  Scenario: show all courses
    Given I am on the main page
    Then I should see all the courses

  Scenario: find courses in Machine Learning Track
    Given I am on the main page
    And  I press "Machine Learning"
    Then I should see

  Scenario: find courses that fulfill the breadth requirement
    When I check the following tags: breadth1 breadth2 breadth3
    Then I should see

  Scenario: show all courses
    When I press "Refresh"
    Then I should see all the courses


