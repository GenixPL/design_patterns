## Behavioral Pattern

The idea behind the command patter is to turn a request into a stand-alone object that contains all information about the request. This allows us to remember all information needed to perform certain action which can later be used in order to queue requests, delay them, support undo, ...

E.g., we have a database query executed on a remote database. We would like to be able to change our local state and send request when our internet connection is established. Additionally, we might have to undo our queries because we allow user to do than within certain amount of seconds.   