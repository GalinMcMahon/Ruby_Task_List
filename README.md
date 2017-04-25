# Ruby Task List

#### Basic Task List, 04/25/17

#### By Galin McMahon

## Description

Program keeps track of new tasks in a list

## Specifications

| Behavior | Input | Output |
|----------|-------|--------|
| Accept a new task and return it | "do thing" | "do thing" |
| Add new tasks to task list | "do stuff" | "do thing", "do stuff" |
| Add functionality to include details | "details" | "details" |

## Routes

| Behavior                 | Route (URL)     | Method | app.rb Example                                                    | Process                                                                       |
|--------------------------|-----------------|--------|-------------------------------------------------------------------|-------------------------------------------------------------------------------|
| Homepage                 | /               | GET    | get('/') do -- erb(:index) -- end                                 | User requests the root route page.                                            |
| Add details              | detailspage.erb | POST   | post("/details") do -- erb(:full_task) -- end                     | User inputs details for a chosen task                                         |
| Display task and details | full_task.erb   | GET    | get('detailspage') do -- erb(:detailspage) -- or -- erb(:'/') end | Displays tasks and details, allows user to add more tasks or add more details |
| Layout                   | layout.erb      | GET    | get('yield') -- erb(:'/') end                                     | Displays tasks                                                                |
| Results                  | result.erb      | GET    | get('description') -- erb(:'/') end                               | Displays tasks                                                                |
| Success                  | success.erb     | GET    |                                                                   | Redundant - Lets user know that a task has been submitted                     |

## Setup/Installation Requirements

* Clone the folder from https://github.com/GalinMcMahon/Ruby_Task_List.git
* Open the index.erb file and enter tasks

## Known Bugs

no bugs as of now

## Support and contact details

Please feel free to contact me at github profile directly.

## Technologies Used

Ruby

### License

MIT

Copyright (c) 2017 **_{Galin McMahon}_**
