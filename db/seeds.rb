# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Comment.destroy_all
Photo.destroy_all
Holiday.destroy_all
User.destroy_all

user1 = User.create :email => "bob@example.com"
user2 = User.create :email => "alice@example.com"

holiday1 = Holiday.create :user_id => 1, :title => "Japan"
holiday2 = Holiday.create :user_id => 1, :title => "Tasmania"
holiday3 = Holiday.create :user_id => 2, :title => "Europe"

photo1 = Photo.create :user_id => 1, :holiday_id => 1, :image_url => "" # Bob, Japan, Osaka Castle
photo2 = Photo.create :user_id => 1, :holiday_id => 1, :image_url => "https://cdn.cheapoguides.com/wp-content/uploads/sites/2/2015/12/comiket-1102-770x513.jpg" # Bob, Japan
photo3 = Photo.create :user_id => 1, :holiday_id => 2, :image_url => "" # Bob, Tasmania, Mt Welligton, Hobart
photo4 = Photo.create :user_id => 2, :holiday_id => 2, :image_url => "" # Alice, Tasmania, Launceston
photo5 = Photo.create :user_id => 2, :holiday_id => 3, :image_url => "" # Alice, Europe, Berlin, Germany
photo6 = Photo.create :user_id => 1, :holiday_id => 3, :image_url => "" # Bob, Europe, Kyoto Castle

# These are comments that are created by the same person who uploaded the photo
comment1 = Comment.create :user_id => 1, :photo_id => 1, :message => "Osaka Castle"
comment2 = Comment.create :user_id => 1, :photo_id => 2, :message => "Harajuku District"
comment3 = Comment.create :user_id => 1, :photo_id => 3, :message => "Mt Welligton, Hobart"
comment4 = Comment.create :user_id => 2, :photo_id => 4, :message => "Launceston"
comment5 = Comment.create :user_id => 2, :photo_id => 5, :message => "Berlin, Germany"
comment6 = Comment.create :user_id => 1, :photo_id => 6, :message => "Paris, France"

# These are secondary comments on the photo
comment7 = Comment.create :user_id => 2, :photo_id => 1, :message => "Wow looks cool"
comment8 = Comment.create :user_id => 1, :photo_id => 4, :message => "Yeah I've been there, it's great"
comment9 = Comment.create :user_id => 2, :photo_id => 6, :message => "Will we have time to get to France?"
comment10 = Comment.create :user_id => 1, :photo_id => 6, :message => "Sure, we can catch a fast train"
