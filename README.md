Springboot Sample REST project
==============================

This is a simple Java 7 web service to return JSON responses to GET requests.

It is a very simple location finder API that requires an interview candidate to build integration tests around.

Maven POM for dependency management and build. Intellij project file included to assist build.

Build instructions
------------------

1. In intellij, edit configurations and point the main class to co.uk.example.Application and run
2. From terminal run: `mvn package`
* then run `mvn spring-boot:run`
* or run `java jar target/springboot_hotspots_test-0.1.0.jar`


Sample Request
--------------
    http://localhost:8080/hotspot?town=london&limit=1


Sample Response
--------------

    [
        {
            "id": 1,
            "name": "location1",
            "address1": "1 The Strand",
            "address2": null,
            "town": "London",
            "postcode": "WIS 2HX",
            "county": "London",
            "latitude": 52.5072,
            "longitude": 0.1275
        }
    ]
    
See the question PDF for more details...