Feature: Get all post from JSONPlaceholder

  Background:
    * url 'https://jsonplaceholder.typicode.com'

  Scenario: Get all post
    Given path 'posts'
    When method get
    Then status 200
    And match response contains { id: '#number', title: '#string', body: '#string', userId: '#number' }
