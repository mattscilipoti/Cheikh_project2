# Feedback from Matt (mms)

## Overview

Looks good overall.  Good job limiting your scope to ensure it is achievable.  You have a good app for Project 2. 

## Project Workflow: How effectively did you plan, execute, and present this project?

Does not meet expectations:  No readme, no planning folder, the wireframe is a link on your local computer (file:///Users/Cheikhndiongue/Desktop/PB2.1.html).

## Technical Requirements: How well does your app demonstrate a grasp of the technologies introduced in class?

Meets expectations: 2 models? Check.  1 association? Check.  CRUD?  Check.

## Creativity / Interface: How memorable and enjoyable to use is your app?

Meets expectations: This looks pretty good for Project 2.  It's on the low end, but within range.

## Code Quality: How able would an uninformed programmer be to reuse and extend your code?

Meets expectations:  Looks pretty good. Make sure you review the comments in the Pull Request.  Watch your indentation.  Proper indentation can make reasoning about the logic much easier.  We discussed using current_user in your controller.  Also, remember that migrations are a series of commands that update your db schema.  As you change your tables, just create new migrations.

## Deployment and Functionality: How accessible is your app to those who may want to explore it?

Does not meet expectations:  Deployed to heroku?  Checkc.  Error showing the "toast" page.
  Caused by missing column - `rake db"migrate` doesn't fix due to edited migration file.  To change a table's schema, create new migrations instead of editing an existing migration.  http://stackoverflow.com/questions/4834809/adding-a-column-to-an-existing-table-in-a-rails-migration

  To clean up heroku: https://coderwall.com/p/qbmhog/reset-heroku-postgres-database


## Overall

A solid 2: Meets expectations. You should be proud.  
