## Creational Patterns

The idea behind prototype is to provide ability to (deep) clone objects without caring about their exact type. This is achieved by creating common interface, that usually consists of only one `clone()` method.

There are not that many usages for this pattern, but the two below provide really nice explanation for its existence.

1. Excel cells \
   Excel cells can have different types, e.g., text, date, number... We want to be able to clone any cell we want, and change it without changing the original cell.

2. Genetics \
   Our bodies are constructed by cells that clone themselves, and then the copies copy themselves, and so on... This is also a good example when it comes to genetic algorithms, we have objects with specific parameters, next generation comes in, we kill or copy each object, and while copying we mutate the new object, and the mutation should affect only that object - the original one should remain intact.

https://refactoring.guru/design-patterns/prototype