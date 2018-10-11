# Mail2Todoist
Create a Todoist task from Apple Mail

## Usage

* Keyboard Shortcut, create Todo in Todoist with default due date and default project and label
* `m2t:config`: default project and label setup
* `m2t`: add due date (natural language) and/or #Project and/or @Label
* `Shift + CMD + T` creates Todoist task *tomorrow at 10:00*

## Required

* Todoist Premium (todoist.com)
* JSON Helper (mousedown.net)

## Setup

1. Add Todoist API Key (https://todoist.com/prefs/integrations)
2. Add Destination Mailbox, the folder where email will be moved/archived. If empty email will not be archived.
3. Type `m2t:config` in Alfred to setup default Project and Label

## Note

This is an early version and can be buggy because I did not test all use cases. 
