# Structural Pattern

The idea behind the adapter design pattern is to allow objects with incompatible interfaces to collaborate.

E.g., we have a program that works with JSONs and suddenly we have to handle XML data. We create and `XmlToJson` adapter that converts XML into JSON, and the rest of our program can handle new data without any changes.

https://refactoring.guru/design-patterns/adapter