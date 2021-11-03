## Behavioral Pattern

The idea behind chain of responsibility (CoR) pattern is decouple classes that invoke operations from classes that perform operations.

E.g., we want to send a package, we don't care how it's gonna be done, we just want it delivered or returned to us upon failure. We go to a post office, and the post office is the first element in our chain, it does it job, and passes the package to another element - distribution center, where the package is picked up by a delivery man and delivered to the final person.\
Along the way there is no need for any god-like organisation controlling all the process, each element is responsible for its part, and it's easy to reuse the elements, add new ones or remove existing ones.

E.g. #2, we have to validate a huge for consisting of multiple data formats, requirements, and dependencies. We could do this is a one 1k line block, but then we have to add new validation that might cause an omitting of several other validations, or we might have to reuse the validation in another form, but only part of it. Decoupling of each step makes it easy to reuse them, switch and keeps the code clean.

https://refactoring.guru/design-patterns/chain-of-responsibility