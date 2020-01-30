# Booknook
# BookNook: A Description

This application lets users join a bookclub, create books within a bookclub that they can comment on and have discussions with other users about the book they are reading. A user can create, delete, show, and update their books, as well as comments. I was inspired to make this app after my mom joined multiple bookclubs and wanted the option to discus the books she was reading remotely with her differe book groups.

## Setup Steps

1. [Fork and clone] this repository.
2.  Run `bundle install` to install all dependencies
3.  Use `bin/rails server` to spin up the server.

## Important Links
<a href="https://github.com/caleybennett/project-4-client" target="_blank">  Front End Repo </a>
<a href="https://caleybennett.github.io/project-4-client/#/bookclubs/1" target="_blank"> Deployed Client </a>
<a href="https://young-coast-99750.herokuapp.com/bookclubs" target="_blank"> Deployed API </a>

## Planning Story
I wanted to create an app where users could discuss books they were reading in different bookgroups. I started the first day by creating my backend, which consisted of four resources: users, bookclubs, books, and comments. A user has many bookclubs and bookclubs have many users. I did this by creating a joined table of bookclub_members which had two fields: a user_id and a bookclub_id. This allowed users to join a bookclub. I created the books resource which had a user_id, a bookclub_id, a title and an author field. I then created the comments resource which had a user_id, book_id, and text field.

The second day I removed the bookclub resource to make sure I hit mvp, so a user could just create books and comments. I used react in the front end to make sure users could CRUD on the resource. After a few hiccups getting used to using React, I completed these two resources on the second day. The third day I then encorperated my many to many relationship. I decided that a user should only be able to create a bookclub, not be able to update or edit it. I did this by creating a post request to `/bookclubs`. I also made it so users can join the bookclub by clicking a join bookclub button.

On the forth day I created a 'my bookclubs' feature which shows the user what bookclubs they have joined. To do this I had to filter twice through the bookclubs array, since I was iterating through an array of an array. This took most of the morning. The afternoon of the forth day was spent bug hunting and styling.

## Routes

Bookclubs:
Verb         |	URI Pattern
------------ | -------------
GET | /bookclubs
GET | /bookclubs/:id
POST | /bookclubs
PATCH | /bookclubs/:id
DELETE | /bookclubs/:id

Books:
Verb         |	URI Pattern
------------ | -------------
GET | /books
GET | /books/:id
POST | /books
PATCH | /books/:id
DELETE | /books/:id

Bookclub members:
Verb         |	URI Pattern
------------ | -------------
GET | /bookclub_members
GET | /bookclub_members/:id
POST | /bookclub_members
PATCH | /bookclub_members/:id
DELETE | /bookclub_members/:id

Comments:
Verb         |	URI Pattern
------------ | -------------
GET | /comments
GET | /comments/:id
POST | /comments
PATCH | /comments/:id
DELETE | /comments/:id

## ERD
https://imgur.com/ji357wE

## Future Plans
Ideally I would like to encorerate a third party api where users can browse books to add to their bookclubs.
