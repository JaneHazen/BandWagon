require 'faker'

Concert.destroy_all
User.destroy_all
Attendance.destroy_all


Concert.create(band: "Dou Wei", venue: "Strawberry Festival", date: Faker::Date.forward(rand(30)), start_time: "8:00PM", image: "http://jonathanwcampbell.com/blog/wp-content/uploads/2011/07/Dou-Wei-III.jpg")

Concert.create(band: "Noname", venue: "NoName Bar", date:Faker::Date.forward(rand(30)), start_time: "10:00PM", image: "http://www.chuggentertainment.com/app/uploads/2017/08/Screen-Shot-2017-08-30-at-12.07.01-PM.png")

Concert.create(band: "No Doubt", venue: "Hollywood Boulevard", date: Faker::Date.forward(rand(30)), start_time: "9:00PM", image: "http://www.lovemarks.com/wp-content/uploads/lovemark-no-doubt-standard-600x600.jpg")

Concert.create(band: "Langhorne Slim", venue: "The Slowdown", date: Faker::Date.forward(rand(30)), start_time:"8:00PM", image: "http://www.rouxby.com/wp-content/uploads/2012/04/IMG_1865.jpg")

Concert.create(band: "Freestyle Fellowship", venue: "Duffy's", date: Faker::Date.forward(rand(30)), start_time:"10:00PM", image: "https://images1.laweekly.com/imager/having-already-influenced-every-rapper-you/u/original/4245708/freestyle_fellowship_by_trevor_traynor_1.jpg")

Concert.create(band: "Cui Jian", venue: "The Square", date: Faker::Date.forward(rand(30)), start_time: "10:00AM", image: "http://www.sbs.com.au/news/sites/sbs.com.au.news/files/shorthand_images/cuijian.jpg" )

Concert.create(band: "Esperanza Spalding", venue: "Yia Yia's", date: Faker::Date.forward(rand(30)), start_time: "8:00PM", image: "https://a1-images.myspacecdn.com/images04/2/4058018140634bb5be72bf7f150180e0/300x300.jpg")

Concert.create(band: "Rancid", venue: "The Bourbon", date: Faker::Date.forward(rand(30)), start_time: "9:00PM", image: "https://www.opiwiki.com/pic?w=6&f=109139&e=1&o=703")

Concert.create(band: "Barenaked Ladies", venue: "Everywhere for Everyone", date: Faker::Date.forward(rand(30)), start_time: "10:00PM", image: "http://cps-static.rovicorp.com/3/JPG_500/MI0001/682/MI0001682668.jpg?partner=allrovi.com")

Concert.create(band: "Bobby McFerrin", venue: "The Slowdown", date:Faker::Date.forward(rand(30)), start_time: "7:00PM", image: "http://bobbymcferrin.com/images/press/CarolFriedman4.jpg")

Concert.create(band: "Conor Oberst", venue: "Saddlecreek", date: Faker::Date.forward(rand(30)), start_time: "8:00PM", image: "https://consequenceofsound.files.wordpress.com/2014/05/conor_oberst_gen-e1400132115242.jpg?quality=80")

Concert.create(band: "Nice & Smooth", venue: "The Hot Mess", date: Faker::Date.forward(rand(30)), start_time: "9:00PM", image: "http://mp3red.me/cover/1287421-460x460/nice-smooth.jpg")

Concert.create(band: "Zhou Yunpeng", venue: "Duffy's", date: Faker::Date.forward(rand(30)), start_time: "10:00PM", image: "http://www.chinoiresie.info/wp-content/uploads/2017/01/BOT09013_015.jpg")

Concert.create(band: "Sturgill Simpson", venue: "The Bourbon", date: Faker::Date.forward(rand(30)), start_time: "7:00PM", image: "https://static1.squarespace.com/static/566362b2e4b032b04c60a806/567833005a5668f86ec67972/5678342dc21b8664a20ad69c/1450721068398/_MG_0173-edit.jpg?format=500w")

Concert.create(band: "Chance the Rapper", venue: "Duffy's", date: Faker::Date.forward(rand(30)), start_time: "8:00PM", image: "http://cdn-img.essence.com/sites/default/files/styles/1x1_xs/public/1478018504/Chance-the-rapper.jpg?itok=NDEy1lbY")



5.times do |number|
  User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: "#{number}@email.com", password: "password")
end

concerts = Concert.all
users = User.all

15.times do
  Attendance.create(attendee: users.sample, concert: concerts.sample)
end



