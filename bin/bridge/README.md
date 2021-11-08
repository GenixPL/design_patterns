# Structural Pattern

The idea behind the bridge design pattern is to split a large class, or a set of closely related classes, into two separate hierarchies—abstraction and implementation—which can be developed independently of each other.

This comes very naturally in most of the cases, because that's how we usually think about OOP.

E.g., we have a classes representing tiers and classes representing cars.\
We could do this in a bad way - have a separate class for tire, and a separate class for each car. Then we would have combinations of them, which leads to exponential growth of classes whenever introducing new tires of cars, Tire1Car1, Tire2Car1, Tire2Car1, Tire2Car2, ...\
The better way is to use bridge pattern, extract Car and Tire classes, and then put Tire reference inside the Car. This will give us the same number of combinations, but whenever introducing a new type we would have to add only one class for the type.

https://refactoring.guru/design-patterns/bridge
