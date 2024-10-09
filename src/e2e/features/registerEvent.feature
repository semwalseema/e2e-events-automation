@registerEvent
Feature: Event Registration


  Scenario: Verify Events Hub Page Content
    Given I am on the events hub page
    Then I should see the Marquee displayed on the page
    Then I should see events displayed on the page
    Then I should see the total number of pages and results displayed
    Then I should see pagination controls
    And the "Next" button should be clickable
    And the "Previous" button should be clickable
    And I should be able to click on specific page numbers
    
  Scenario Outline: Validate and register events
    Given I am on the events hub page
    When I select the event card with title "<EventName>"
    Then the banners on the event card should be displayed correctly
    And I should see the date and time displayed correctly on the event card
    When I click the View event button on the event card
    Then I should navigate to the event detail page
    And I should see the event details on the page
    And I should see the Venue on the event details page
    And I should see the Agenda on the event details page
    And I should see profile cards for speakers and host
    And I verify the CTA in the related products blade
    And I verify the partners section

    Then I initiate the RSVP process and handle sign-in if required
    Then I should see the event title I clicked on
    And I should see my email prefilled
    Then I fill all the required information with <FormData>
    When I check the Terms and Conditions
    Then I click the Submit button
    Then I see the registration confirmation
    Then I cancel the RSVP

  Examples: DefaultEvents
    | EventName                | FormData                                              |
    | Auto Events Demo         | '{"companyName": "Test Company 1", "jobTitle": "Other", "phoneNumber": "1234567890", "industry": "Advertising", "interest": "Creative Cloud", "companySize": "10-49", "ageRange": "26-35", "jobLevel": "Manager", "contactMethod":"email"}' |
    