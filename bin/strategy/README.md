## Behavioral Pattern

The idea behind the strategy pattern is to allow objects to choose a behaviour dynamically, and creates a nice
separation between different logic creating the same output.

E.g., we have a navigation app that allows travelling by foot, bus or airplane. When we want to determine a route from
point A to B, we can choose between those travelling options, which will probably result in different routes. The thing
responsible for displaying a route doesn't care how it has been prepared, so it takes an interface for the logic
determining the route and asks currently assigned instance of the logic, how the route should look like. Additionally,
the pattern allows us to dynamically change the strategy - suddenly we want to go with bus not by foot. The pattern
allows us to simply switch the logic and all the displaying component has to do is to switch it and re-render itself.

Main difference between Strategy and Template patterns is that the Strategy focuses on dynamic behaviour changes and
Template wants everything to be predefined.

https://refactoring.guru/design-patterns/strategy