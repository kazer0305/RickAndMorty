Feature: Character status in the series

  Background: It executes before each test
    * def url_Rickosa = 'https://rickandmortyapi.com/api/'

  @TestOne
  Scenario: It verifies a succesful character response
    Given url url_Rickosa
    And path 'character/115'
    When method get
    Then status 200

  @TestTwo
  Scenario: It verifies a non succesful character response
    Given url url_Rickosa
    And path 'character/115897'
    When method get
    Then status 404

  @TestThree
  Scenario: It verifies the response and checks some info, the name and the species
    Given url url_Rickosa
    And path 'character/115'
    When method get
    Then status 200
    And match response.name == "Ethan"
    And match response.species == "Human"
