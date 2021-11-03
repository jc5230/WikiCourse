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
      | 12503 | ARTIFICIAL INTELLIGENCE   | COMS W4701 | 3   | some intro for AI  | Software System  |
  Scenario: show all courses
    Given I am on the home page
    Then I should see 5 seed courses

  Scenario: find courses in Software System Track
    Given I am on the home page
    And  I follow "Software System"
    Then I should be on the main page
    And I should see "INTRODUCTION TO DATABASES"
    And  I should see "PROGRAMMING LANG & TRANSL"


  Scenario: find courses that fulfill the breadth requirement
    Given I am on the main page
    And  I follow "Software System"
    And  I follow "Breadth - AI & Applications"
    #Then I should see "ARTIFICIAL INTELLIGENCE"
    And I should not see "INTRODUCTION TO DATABASES"
    And I should not see "OPERATING SYSTEMS I"
    And  I should not see "PROGRAMMING LANG & TRANSL"

  Scenario: go back to the home page
    Given I am on the main page
    And  I follow "Software System"
    And I follow "Back to home"
    Then I should be on the home page
    And I should see all the courses


