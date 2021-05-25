Feature: Check the Homepage

    Scenario: Check the homepage
        When I am on the homepage
        Then I should see the message "Symfony demo"

    @javascript
    Scenario: I search for "Lorem"
        When I open the search page
        And I search for "Lorem"
        Then I should see "Lorem Ipsum"
