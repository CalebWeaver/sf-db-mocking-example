# Salesforce Database Mocking Examples
A couple of examples of mocking a database in Salesforce, using interfaces and the stub api.
Using these, a developer can more quickly write more comprehensive unit tests that run more quickly as they don't touch the database. Using an interface has been a more common approach but using the StubAPI, fewer classes are required to be developed and maintained over the long term.

./interface/ provides an example interface mock, using AccountAndUserController.clas as the client code.

./stubapi/ does the same but using the StubAPI framework for the mocking.
