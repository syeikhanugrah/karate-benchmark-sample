Feature: Update a post in JSONPlaceholder

    Background:
        * url 'https://jsonplaceholder.typicode.com'

    Scenario: Update a post
        Given path 'posts/1'
        And request { id: 1, title: 'updated title', body: 'updated body', userId: 1 }
        When method put
        Then status 200
        And match response == { id: 1, title: 'updated title', body: 'updated body', userId: 1 }
        And match response == { id: '#number', title: '#string', body: '#string', userId: '#number' }
