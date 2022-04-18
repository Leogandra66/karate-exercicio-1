Feature: Gestao de pets
    como gestor da petstore
    desejo gerenciar os petspara ter o cntrole das info cadastrais

    Scenario: Cadatsrar um pet usando id
        Given url "https://petstore.swagger.io/v2"
        And path "pet", "720"
        And form field name = "cachorro camelo"
        And form field status = "avaible"
        When method post
        Then status 200 

    Scenario: consultar pet por status avaible e pending
        Given url "https://petstore.swagger.io/v2"
        And path "pet/findbystatus"
        And param status = ["avaible","pending"]
        When method get
        Then status 200