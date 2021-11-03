## Structural Pattern

The idea behind composite pattern is to simplify dealing with complex tree structures, when we don't care about specific functionalities of each object, and can generalize them into two types - single Objects and Containers containing multiple Objects.

E.g., we have to calculate used disc size, we don't care what's inside any of the files, and how to deal with them. We have folders containing files, and both - folders and files, share the same Thing interface that provides the thing's size. Files simply return their sizes, folders recursively summarize their children's sizes, and optionally add their own. \
In this scenario if we suddenly have to deal with exact file, we can add path to the Thing interface and create proper File object using that files (a nice transition from complete generalization to complete specification).

https://refactoring.guru/design-patterns/composite