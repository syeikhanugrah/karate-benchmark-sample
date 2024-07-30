Feature: Create a new post in JSONPlaceholder

    Background:
        * url 'https://jsonplaceholder.typicode.com'

    Scenario: Create a new post
        Given path 'posts'
        And request { title: 'foo', body: 'bar', userId: 1 }
        When method post
        Then status 201
        And match response contains { title: 'foo', body: 'bar', userId: 1 }
        And match response == { id: '#number', title: '#string', body: '#string', userId: '#number' }
