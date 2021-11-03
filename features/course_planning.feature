Feature: search for courses by track requirements
  As a MSCS student
  So that I can find courses that fulfill my degree requirement
  I want to lookup courses based on track requirements

  Background: courses in database
    Given the following courses exist:
      | call  | title                     | number     | pts | description        | track            |
      | 12406 | INTRODUCTION TO DATABASES | COMS W4111 | 3   | some intro for DB  | Machine Learning |
      | 12406 | INTRODUCTION TO DATABASES | COMS W4111 | 3   | some intro for DB  | Software System  |
      | 12547 | PROGRAMMING LANG & TRANSL | COMS W4115 | 3   | some intro for PLT | Software System  |
      | 12539 | OPERATING SYSTEMS I       | COMS W4118 | 3   | some intro for OS  | Software System  |
  Scenario: show all courses
    Given I am on the home page
    Then I should see all the courses

  Scenario: find courses in Software System Track
    Given I am on the home page
    And  I press "Software System"
    Then I should see "INTRODUCTION TO DATABASES"
    And  I should see "PROGRAMMING LANG & TRANSL"


  Scenario: find courses that fulfill the breadth requirement
    When I check the following tags: B1
    Then I should see "INTRODUCTION TO DATABASES"
    And I should not see "OPERATING SYSTEMS I"

  Scenario: show all courses
    When I press "Refresh"
    Then I should see all the courses


