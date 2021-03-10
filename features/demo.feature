Feature: Check the Homepage

    Scenario: Check the homepage
        When I am on the homepage
        Then I should see "Symfony demo"

    @javascript
    Scenario: Search a text on the search page
        When I open the search page
        And I search for "Lorem"
        Then I should see "Lorem Ipsum"
