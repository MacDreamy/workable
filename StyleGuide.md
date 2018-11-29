# Rules for Commit Message
Please write concise and clear commit message

Each commit message should describe what is changed, why the change was made. Additionally, if necessary, explain how the change solved the issue.

# General Coding Guideline
https://github.com/rubocop-hq/ruby-style-guide/blob/master/README.md

Please properly indent your code with 4 spaces

filename use only lowercase letter with underscore to connect multiple words

In order to avoid Rails magical errors, follow these rules when naming models, controllers, and views:

**Model**

`rails generate model Workspaces`

use plural form of the Model in capitalized form

**Controller**

filename: modelnames_controller.rb

need to use plural form of the Model name

inside this file:
class **ModelnamesController** < ApplicationController
end

**Views**

in **app/views/** folder create folder with the name lowercase plural form of the model name

Pull request with improperly formatted code will be rejected.
