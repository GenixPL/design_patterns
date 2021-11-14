## Structural Pattern

The idea behind the Facade pattern is to simply provide a nice interface for clients to use.

Let's say our system has several components. We have to validate users in one service, store their data in another, and allow them performing actions on a third one. We could say, hey, here is a service responsible validation, that will give you a token that you then have to use in db service and actions service, or we can encapsulate them, let client validate, we take care of remembering the result (or its lack), and then let him perform actions.\
All client would have to know is that it has one class accessible, through which it can do everything, and that there is a requirement to first perform authentication otherwise none of the actions will be executed.\
Alternative is to make client aware of all three services and then handle all possible logic needed to connect their actions.

https://refactoring.guru/design-patterns/facade