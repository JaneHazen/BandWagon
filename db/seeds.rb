require 'faker'

Concert.destroy_all
User.destroy_all
Attendance.destroy_all


Concert.create(band: "Dou Wei", venue: "Strawberry Festival", date: Faker::Date.forward(rand(30)), start_time: "8:00PM", image: "http://jonathanwcampbell.com/blog/wp-content/uploads/2011/07/Dou-Wei-III.jpg")

Concert.create(band: "Noname", venue: "NoName Bar", date:Faker::Date.forward(rand(30)), start_time: "10:00PM", image: "https://pixel.nymag.com/imgs/daily/vulture/2016/10/27/27-noname.w1200.h630.jpg")

Concert.create(band: "No Doubt", venue: "Hollywood Boulevard", date: Faker::Date.forward(rand(30)), start_time: "9:00PM", image: "https://www.punknews.org/images/bands/nodoubt-1432819638.jpg")

Concert.create(band: "Langhorne Slim", venue: "The Slowdown", date: Faker::Date.forward(rand(30)), start_time:"8:00PM", image: "https://i.ytimg.com/vi/7PvoXknn99E/maxresdefault.jpg")

Concert.create(band: "Freestyle Fellowship", venue: "Duffy's", date: Faker::Date.forward(rand(30)), start_time:"10:00PM", image: "http://s3.amazonaws.com/955dreams_BoD/live/Freestyle%20Fellowship/images/website_landing_1024.jpg")

Concert.create(band: "Cui Jian", venue: "The Square", date: Faker::Date.forward(rand(30)), start_time: "10:00AM", image: "http://www.processphilosophy.org/uploads/5/9/1/5/5915900/1906707.jpg" )

Concert.create(band: "Esperanza Spalding", venue: "Yia Yia's", date: Faker::Date.forward(rand(30)), start_time: "8:00PM", image: "http://farm5.static.flickr.com/4039/4582764369_515876548a_o.jpg")

Concert.create(band: "Rancid", venue: "The Bourbon", date: Faker::Date.forward(rand(30)), start_time: "9:00PM", image: "https://media.livenation.com/artists/41512/41512-show-66309.jpg?1374690550")

Concert.create(band: "Barenaked Ladies", venue: "Everywhere for Everyone", date: Faker::Date.forward(rand(30)), start_time: "10:00PM", image: "http://images.wolfgangsvault.com/cvfeatures/barenakedladies-20130530.jpg")

Concert.create(band: "Bobby McFerrin", venue: "The Slowdown", date:Faker::Date.forward(rand(30)), start_time: "7:00PM", image: "https://diarrya.files.wordpress.com/2011/07/bobby-mcferrin.jpg")

Concert.create(band: "Conor Oberst", venue: "Saddlecreek", date: Faker::Date.forward(rand(30)), start_time: "8:00PM", image: "https://consequenceofsound.files.wordpress.com/2014/05/conor_oberst_gen-e1400132115242.jpg?quality=80")

Concert.create(band: "Nice & Smooth", venue: "The Hot Mess", date: Faker::Date.forward(rand(30)), start_time: "9:00PM", image: "http://mp3red.me/cover/1287421-460x460/nice-smooth.jpg")

Concert.create(band: "Zhou Yunpeng", venue: "Duffy's", date: Faker::Date.forward(rand(30)), start_time: "10:00PM", image: "http://m13.mask9.com/sites/default/files/styles/l/public/imagepad/20140428/20140428150830-bce636e28d7b128ccdc44d6d71e47e194d3f05f8.38/people-singer-zhou-yunpeng-mask9.jpg")

Concert.create(band: "Sturgill Simpson", venue: "The Bourbon", date: Faker::Date.forward(rand(30)), start_time: "7:00PM", image: "http://www.jeffersontheater.com/assets/img/sturgill-simpson-slide1.jpg")

Concert.create(band: "Chance the Rapper", venue: "Duffy's", date: Faker::Date.forward(rand(30)), start_time: "8:00PM", image: "http://therockatbc.com/wp-content/uploads/2016/05/Chance_The_Rapper-Offical-Tumblr.jpg")



5.times do |number|
  User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: "#{number}@email.com", password: "password")
end

concerts = Concert.all
users = User.all

15.times do
  Attendance.create(attendee: users.sample, concert: concerts.sample)
end



