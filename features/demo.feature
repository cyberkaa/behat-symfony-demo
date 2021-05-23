Feature: Check the Homepage

    Scenario: Check the homepage
        When I am on the homepage
        Then I should see "Symfony demo"

    Scenario: Check op technight article
        Given I am on the homepage
        Then I should see "Technight"
        And I should see "Hij doet het"

    @javascript
    Scenario: I search for "Lorem"
        When I open the search page
        And I search for "Lorem"
        Then I should see "Lorem Ipsum"
