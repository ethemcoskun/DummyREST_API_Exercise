
Feature: Testing Dummy REST API - Employee GET and DELETE methods 

  Background:	
    # we can define common settings here in background such as ednpoints, request payloads etc.
    * url baseUrl


  Scenario: Using GET Method - getting an employee details
    # Defining the resource we want to consume, employee details in this case as path variable
    Given path '/employee/15'
    # When we make Http GET Request
    When method get
    # Asserting the status code to verify that it is 200 (Successful)
    Then status 200
    # Printing the entire response payload using print keyword
    * print response
    # Using the match statement to verify response message is what we expected
    * match response.message == "Successfully! Record has been fetched."
    
    
  Scenario: Using DELETE Method - deleting an employee
    # Defining the resource we want to delete, we need to update our path for the delete operation.
    Given path '/delete/15'
    # When we make Http DELETE request
    When method delete
    # Asserting the status code to verify that it is 200 (Successful)
    Then status 200
    # Printing the entire response payload using print keyword
    * print response
    * match response.message == 'Successfully! Record has been deleted'
