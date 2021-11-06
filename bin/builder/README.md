## Creational Pattern

The idea behind the build pattern is to separate construction of an object from its representation.

Let's say we have to build houses. Some of them can be wooden, some of them can be made out of concrete, some of them might have glass rooftops, some may not, some... If we would like to represent all possibilities with different classes we would quickly have a ton of them and unmanageable mess. On the other hand if we would have one class that would have to handle the full range of possible object constructions of itself we would have the class would probably have 10 times as more constructor code as any other.

Here comes the builder pattern with its separation. It allows us to leave the class with only one basic constructor and adds another layer of `builders` that make sure the objects are constructor according to their specification (WoodenBuilder builds wooden houses, etc...) and all client code has to do is specify what type of builder it wants to use, and call its build steps.

Additionally, we can separate another step in the process, as most of the constructions will probably happen in the same order, we can create a `director` that will take a builder and execute all needed build methods for us in proper order.

It is very useful in languages that don't support named optional parameters.

### This pattern has many ways in which it can be implemented!