Feature: search for courses by track requirements
  As a MSCS student
  So that I can find courses that fulfill my degree requirement
  I want to lookup courses based on track requirements

  Background: courses in database
    Given the following courses exist:
      | call  | title                     | number     | pts | description        | track            | breadth  | required  | elective  |
      | 12406 | INTRODUCTION TO DATABASES | COMS W4111 | 3   | some intro for DB  | Machine Learning | B1       | 0         | 1         |
      | 12406 | INTRODUCTION TO DATABASES | COMS W4111 | 3   | some intro for DB  | Software System  | B1       | 1         | 1         |
      | 12547 | PROGRAMMING LANG & TRANSL | COMS W4115 | 3   | some intro for PLT | Software System  | B1       | 1         | 1         |
      | 12539 | OPERATING SYSTEMS I       | COMS W4118 | 3   | some intro for OS  | Software System  | B2       | 1         | 0         |
      | 12503 | ARTIFICIAL INTELLIGENCE   | COMS W4701 | 3   | some intro for AI  | Software System  | B3       | 0         | 0         |
    Given the following users exist:
      | username | password | 
      | test     | test     |
  
  Scenario: show all courses
    Given I am on the home page
    Then I should see 5 seed courses

  Scenario: choose a track and redirect to main page
    Given I am on the home page
    And  I choose Software System track
    Then I should be on the main page

  Scenario: find courses in Software System Track
    Given I am on the main page
    And  I choose Machine Learning track
    Then I should see "INTRODUCTION TO DATABASES"
    And  I should not see "PROGRAMMING LANG & TRANSL"

  Scenario: find courses that fulfill the breadth requirement in a track
    Given I check Breadth - AI & Applications label in Software System track
    Then I should see "ARTIFICIAL INTELLIGENCE"
    And I should not see "OPERATING SYSTEMS I"
    And  I should not see "PROGRAMMING LANG & TRANSL"
    Then I follow "Back to home"
    And I check Track Electives label in Software System track
    And I should see "PROGRAMMING LANG & TRANSL"

  Scenario: unselect a track and reselect a new track
    Given I check Required Track Courses label in Software System track
    Then I should see "OPERATING SYSTEMS I"
    And I should see "PROGRAMMING LANG & TRANSL"
    And I should see "INTRODUCTION TO DATABASES"
    And I should not see "ARTIFICIAL INTELLIGENCE"
    Then I uncheck Required Track Courses label in Software System track
    And I should see "ARTIFICIAL INTELLIGENCE"

  Scenario: find courses that fulfill multiple requirements in a track
    Given I check multiple labels: Required Track Courses, Breadth - Systems in Software System track
    Then I should see "INTRODUCTION TO DATABASES"
    And  I should see "PROGRAMMING LANG & TRANSL"
    And I should not see "OPERATING SYSTEMS I"

  Scenario: find courses that fulfill all requirements in a track
    Given I check multiple labels: Required Track Courses, Track Electives, Breadth - Systems, Breadth - Theory, Breadth - AI & Applications in Software System track
    Then I should see "INTRODUCTION TO DATABASES"
    And  I should see "PROGRAMMING LANG & TRANSL"
    And I should not see "OPERATING SYSTEMS I"

  Scenario: checkout the detail page of a course
    Given I check Breadth - AI & Applications label in Software System track
    And I click on the call number 12406
    Then  I should be on the detail page for "INTRODUCTION TO DATABASES"
    And I should see "some intro for DB"

  Scenario: see the comments of a course
    Given I am on the detail page for "INTRODUCTION TO DATABASES"
    Then I should see "Student Comments"
    And I should see "rating workload description professor date"

  Scenario: add a new comment to a course without login - should fail
    Given I am on the detail page for "INTRODUCTION TO DATABASES"
    And I click on Rate This Course for "INTRODUCTION TO DATABASES"
    Then I should be on the welcome page 
    
  Scenario: login
    Given I log in the login page
    Then I enter my credentials
    Then I press "login-bt"
  
  Scenario: add a new comment to a course with login - should success
    Given I log in the login page
    Then I enter my credentials
    Given I am on the detail page for "INTRODUCTION TO DATABASES"
    And I click on Rate This Course for "INTRODUCTION TO DATABASES"
    Then I should be on the comment page for "INTRODUCTION TO DATABASES"
    Then I write some comments
    Then I follow "Submit"
    Then I should be on the detail page for "INTRODUCTION TO DATABASES"

  Scenario: go back to the home page after see the course descriptions
    Given I am on the detail page for "INTRODUCTION TO DATABASES"
    And I follow "Back to home"
    Then I should be on the home page
    And I should see all the courses


  Scenario: go back to the home page
    Given I am on the main page
    And  I choose Software System track
    And I follow "Back to home"
    Then I should be on the home page
    And I should see all the courses