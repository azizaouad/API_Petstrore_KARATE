Feature: Testing Petstore API

  Scenario: check the word Petstore
    Given url 'http://petstore.swagger.io/v2/swagger.json'
    When method GET
    Then status 200
    And def response = response
    And karate.set('apiResponse', response)
    And def petstoreValue = karate.get('apiResponse.info.title')
    And match petstoreValue contains 'Petstore'
