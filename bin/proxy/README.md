## Structural Pattern

The idea behind proxy is to add a layer allowing to perform some actions before or after the main action.

There are many various ways this design pattern can be utilized:

- Limit access to an object allowing us to do anything.
- Check credentials before allowing to execute a command.
- Add logging layer.
- Manage lifecycle of an expensive object, we might want to create it when it's needed, keep alive as long as it's needed, and then destroy it afterwards, or time it out without relaying on a client to do that.
- ...

https://refactoring.guru/design-patterns/proxy