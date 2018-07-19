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

user1 = User.create :email => "bob@example.com", :name => "Bob Smith", :password => "bob12345"
user2 = User.create :email => "alice@example.com", :name => "Alice Green", :password => "alice12345"

holiday1 = Holiday.create :title => "Japan", :location => "Tokyo, Japan"
user1.holidays << holiday1

holiday2 = Holiday.create :title => "Tasmania", :location => "Hobart, Tasmania, Australia"
user1.holidays << holiday2

holiday3 = Holiday.create :title => "Europe", :location => "Berlin, Germany"
user2.holidays << holiday3

holiday4 = Holiday.create :title => "America", :location => "New York, USA" # Seeding a holiday with no photos or comments
user2.holidays << holiday4

photo1 = Photo.create :image_url => "https://i2.wp.com/outoftownblog.com/wp-content/uploads/2018/03/Osaka-Castle.jpg?fit=1200%2C673&ssl=1" # Bob, Japan, Osaka Castle
holiday1.photos << photo1
user1.photos << photo1

photo2 = Photo.create :image_url => "https://cdn.cheapoguides.com/wp-content/uploads/sites/2/2015/12/comiket-1102-770x513.jpg" # Bob, Japan
holiday1.photos << photo2
user1.photos << photo2

photo3 = Photo.create :image_url => "https://upload.wikimedia.org/wikipedia/commons/1/18/Mount_Wellington.jpg" # Bob, Tasmania, Mt Welligton, Hobart
holiday2.photos << photo3
user1.photos << photo3

photo4 = Photo.create :image_url => "http://www.pacificaluminium.com.au/uploads/gallery/2012/07/12/wtlarzqk944eGwyV9YNv-med.jpg" # Alice, Tasmania, Launceston
holiday2.photos << photo4
user2.photos << photo4

photo5 = Photo.create :image_url => "https://media-cdn.tripadvisor.com/media/photo-s/0d/f5/7c/3b/shore-excursion-best.jpg" # Alice, Europe, Berlin, Germany
holiday3.photos << photo5
user2.photos << photo5

photo6 = Photo.create :image_url => "https://s21041.pcdn.co/wp-content/uploads/2018/01/Madrid.jpg" # Bob, Europe, Madrid, Spain
holiday3.photos << photo6
user1.photos << photo6

# These are comments that are created by the same person who uploaded the photo
comment1 = Comment.create :message => "Osaka Castle"
photo1.comments << comment1
user1.comments << comment1
comment2 = Comment.create :message => "Harajuku District"
photo2.comments << comment2
user1.comments << comment2

comment3 = Comment.create :message => "Mt Welligton, Hobart"
photo3.comments << comment3
user1.comments << comment3

comment4 = Comment.create :message => "Launceston"
photo4.comments << comment4
user2.comments << comment4

comment5 = Comment.create :message => "Berlin, Germany"
photo5.comments << comment5
user2.comments << comment5

comment6 = Comment.create :message => "Paris, France"
photo6.comments << comment6
user1.comments << comment6


# These are secondary comments on the photo
comment7 = Comment.create :message => "Wow looks cool"
photo1.comments << comment7
user2.comments << comment7

comment8 = Comment.create :message => "Yeah I've been there, it's great"
photo4.comments << comment8
user1.comments << comment8

comment9 = Comment.create :message => "Will we have time to get to France?"
photo6.comments << comment9
user2.comments << comment9

comment10 = Comment.create :message => "Sure, we can catch a fast train"
photo6.comments << comment10
user1.comments << comment10
