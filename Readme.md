A Simple MithrilJS todo writtin in coffescript

This was built in a livesteam at https://www.livecoding.tv/omenking/

## Objective
I want to show you how to build a task manager (todo list), that will be super fast. We're going to achieve this by writing raw postgres and using postgres json functions to serve up the api.

The app in question is not for any commercial purpose but I'll cover as much as I can as if this was an app I really wanted to build.

## Questions
- Should you serve render js files from its own server/domain?

## Technology Used
- MithrilJS
- Coffeescript
- Rails 4.2
- Ruby 2.1
- Postgres
- Sass (1.0)
- Haml

## Steps we're going to take
1. Setting up MithrilJS
2. Rendering a list of tasks
3. Adding tasks via a form with enter key
4. Striking off tasks
5. Setting up a skeleton rails app
  - gems configuration (haml,pg)
  - configure database to postgres
6. Rendering mithriljs server side
7. Adding routes to mithriljs (show page)
8. Create an api to show tasks
... more to come
