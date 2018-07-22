# Holiday App

### Live link:
https://blooming-bastion-80252.herokuapp.com/

## Core Requirements

### Timeframe
1 week

### Models
 Your app should have at least 3 models. Make sure they are associated correctly!

### Views
 Use partials to DRY (Don’t Repeat Yourself) up your views.
### Handles invalid data
 Forms in your application should validate data and handle incorrect inputs. Validate sign up information, verify valid email addresses and secure passwords.
### Use Gems
 Use a GEM that talks to an API to add functionality to your app.
### User Login
 Make sure you have basic authentication and authorization set up (if you need it).
### Heroku
 Deploy your code to Heroku.


### Completed Project deliverables:
- Link to Heroku hosted project

- Link to source code on GitHub

## Description
*Holiday App* is a place for people to store their holiday ideas and kickstart their travel planning. Idea for the App came due to my obsession with planning, and love of travelling. I wanted to create a place for saving my ideas, nice photos and locations for my future travels.

Idea for planning/storing ideas in a board format came from such software as Trello and Pinterest.

## Technologies used

- Bootstrap 4.1.2 as Front End Framework
- Rails 5.2.1 as Back End Handling
- Google Maps API for delivering Maps
- Bcrypt to handle authentication/authorization

## Project overview
User can:
Sign up
Log in
Create a holiday with location
User’s location input is passed into Google Maps API to generate holiday map
Upload photos
Comment on their own/other people’s photos
Delete holidays/photos
Edit holiday
-View other people’s holidays when logged in

### Models:
- Holidays
- Users
- Photos
- Comments.

Each Model has a corresponding Controller.

## What Next?
- Add JavaScript modal for “new holiday” to minimize information overload on the screen.

- Add image upload option via Cloudinary

- Add sending email to users at the moment of signing up via SendGrid (my email during the tutorial still hasn’t arrived, I messed something up there too!!)

- Better colours, styling, everything lol

- Drag-and-drop feature for adding pics

- When you click Add Comment, use AJAX so that the comment shows straight with out a reload.
