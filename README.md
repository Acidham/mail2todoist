# Mail2todoist
Create a Todoist task from Apple Mail

## Usage

* Keyboard Shortcut, create Todo in Todoist with default due date and default project and label
* If no config were executed (`m2t:config` and/or  `m2t:mailconfig`): 
	* default project will be Todoist Inbox
	* no label will be added 
	* the email will not be archived. 
* `m2t:config`: default project and label setup
* `m2t:mailconfig`: Setup Archive Mailbox(es). 
	* If you have multiple accounts setup im Mail you can create an entry for each account, e.g. Gmail:[Gmail]/All Mail or Exchange:Archive
* `m2t`: add due date (natural language) and/or #Project and/or @Label instead of using default setup
* `Shift + CMD + T` creates Todoist task *tomorrow at 10:00* with default project and label

## Required

* Todoist Premium (todoist.com)

## Setup

1. Add Todoist API Key (https://todoist.com/prefs/integrations)
3. Type `m2t:config` in Alfred to setup default Project and Label
4. Type `m2t:mailboxconifg`in Alfred to setup default Archive mailbox for each account

