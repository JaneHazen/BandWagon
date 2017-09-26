require 'faker'

Concert.destroy_all
User.destroy_all
Attendance.destroy_all


Concert.create(band: "Dou Wei", venue: "Strawberry Festival", date: Faker::Date.forward(rand(30)), start_time: "8:00PM", image: "http://jonathanwcampbell.com/blog/wp-content/uploads/2011/07/Dou-Wei-III.jpg")

Concert.create(band: "Noname", venue: "NoName Bar", date:Faker::Date.forward(rand(30)), start_time: "10:00PM", image: "http://www.clashmusic.com/sites/default/files/field/image/Copy%20of%20_D__4786%20%284%29.jpg")

Concert.create(band: "No Doubt", venue: "Hollywood Boulevard", date: Faker::Date.forward(rand(30)), start_time: "9:00PM", image: "http://www.lovemarks.com/wp-content/uploads/lovemark-no-doubt-standard-600x600.jpg")

Concert.create(band: "Langhorne Slim", venue: "The Slowdown", date: Faker::Date.forward(rand(30)), start_time:"8:00PM", image: "http://www.rouxby.com/wp-content/uploads/2012/04/IMG_1865.jpg")

Concert.create(band: "Freestyle Fellowship", venue: "Duffy's", date: Faker::Date.forward(rand(30)), start_time:"10:00PM", image: "https://images1.laweekly.com/imager/having-already-influenced-every-rapper-you/u/original/4245708/freestyle_fellowship_by_trevor_traynor_1.jpg")

Concert.create(band: "Cui Jian", venue: "The Square", date: Faker::Date.forward(rand(30)), start_time: "10:00AM", image: "http://www.sbs.com.au/news/sites/sbs.com.au.news/files/shorthand_images/cuijian.jpg" )

Concert.create(band: "Esperanza Spalding", venue: "Yia Yia's", date: Faker::Date.forward(rand(30)), start_time: "8:00PM", image: "http://farm5.static.flickr.com/4039/4582764369_515876548a_o.jpg")

Concert.create(band: "Rancid", venue: "The Bourbon", date: Faker::Date.forward(rand(30)), start_time: "9:00PM", image: "http://images1.fanpop.com/images/image_uploads/Rancid-rancid-911396_500_425.jpg")

Concert.create(band: "Barenaked Ladies", venue: "Everywhere for Everyone", date: Faker::Date.forward(rand(30)), start_time: "10:00PM", image: "https://i.ytimg.com/vi/8T64TLzoJps/hqdefault.jpg")

Concert.create(band: "Bobby McFerrin", venue: "The Slowdown", date:Faker::Date.forward(rand(30)), start_time: "7:00PM", image: "https://diarrya.files.wordpress.com/2011/07/bobby-mcferrin.jpg")

Concert.create(band: "Conor Oberst", venue: "Saddlecreek", date: Faker::Date.forward(rand(30)), start_time: "8:00PM", image: "https://consequenceofsound.files.wordpress.com/2014/05/conor_oberst_gen-e1400132115242.jpg?quality=80")

Concert.create(band: "Nice & Smooth", venue: "The Hot Mess", date: Faker::Date.forward(rand(30)), start_time: "9:00PM", image: "http://mp3red.me/cover/1287421-460x460/nice-smooth.jpg")

Concert.create(band: "Zhou Yunpeng", venue: "Duffy's", date: Faker::Date.forward(rand(30)), start_time: "10:00PM", image: "http://www.chinoiresie.info/wp-content/uploads/2017/01/BOT09013_015.jpg")

Concert.create(band: "Sturgill Simpson", venue: "The Bourbon", date: Faker::Date.forward(rand(30)), start_time: "7:00PM", image: "https://www.gossipcop.com/wp-content/uploads/2017/01/Sturgill-Simpson-Saturday-Night-Live.jpg")

Concert.create(band: "Chance the Rapper", venue: "Duffy's", date: Faker::Date.forward(rand(30)), start_time: "8:00PM", image: "http://cdn-img.essence.com/sites/default/files/styles/1x1_xs/public/1478018504/Chance-the-rapper.jpg?itok=NDEy1lbY")



5.times do |number|
  User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: "#{number}@email.com", password: "password")
end

concerts = Concert.all
users = User.all

15.times do
  Attendance.create(attendee: users.sample, concert: concerts.sample)
end



