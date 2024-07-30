Feature: Delete a post in JSONPlaceholder

    Background:
        * url 'https://jsonplaceholder.typicode.com'

    Scenario: Delete a post
        Given path 'posts/1'
        When method delete
        Then status 200
