Feature: Odeal Feature

  Background:
    Given url baseUrl
    #And path 'user'

  Scenario: Get Deneme
    And path 'pet', 1
    When method GET
    Then print response
    And status 200

  Scenario: User Get
    And path 'user'
    And request 'akgul'
    When method GET
    Then print response
    And status 200

  Scenario: External Data User Create
    And def myRequestBody = read('classpath:data/user.json')
    And path 'user'
    And request myRequestBody
    When method POST
    Then status 200

  Scenario: Status Available Pet Create
    And path 'pet'
    And def petBody = read('classpath:data/pet.json')
    And request petBody
    When method POST
    Then print response
    Then status 200
    * def id = karate.keysOf(response.id)
    * print 'id'

  Scenario: Available Pet Get
    And path 'pet/'
    And path "#(id)"
    When method GET
    Then print response
    And status 200

  Scenario: Available Pet Get
    And param status = 'available'
    And path 'pet/findByStatus'
    When method GET
    Then print response
#        Then print response.status == 'available'
    Then status 200
    And match each response[*].status == 'available'
    And match each response[*].status != 'sold'
#    And print response.id = id

  Scenario: Pet Order
    And p










