Feature: Get a post by ID from JSONPlaceholder

    Background:
        * url 'https://jsonplaceholder.typicode.com'

    Scenario: Get post by ID
        Given path 'posts/1'
        When method get
        Then status 200
        And match response == { id: 1, title: 'sunt aut facere repellat provident occaecati excepturi optio reprehenderit', body: 'quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto', userId: 1 }
        And match response == { id: '#number', title: '#string', body: '#string', userId: '#number' }
