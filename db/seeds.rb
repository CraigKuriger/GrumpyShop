require 'faker'
require 'money'

Category.destroy_all

Category.create(name: "Movies")
Category.create(name: "Music")
Category.create(name: "Books")
Category.create(name: "Other")

Category.all.each do |category|
  4.times do
    category.products.create(name: Faker::Lorem.word.capitalize, description: Faker::Lorem.paragraph(2), image_url: Faker::Avatar.image, price: Money.new(9999, "NZD"))
  end
end

movies = Category.find(name: "Movies")
movies.products.create(name: "G", description: "f", price: "20.00")

User.create(username: "Craig", firstname: "Craig", lastname: "Kuriger", email: "craig@craig.com", password: "qwerty123", admin: true)

User.create(username: "Mr Burns", firstname: "C Montgomery", lastname: "Burns", email: "mrburns@snp.com", password: "qwerty123", admin: true)

User.create(username: "Homer", firstname: "Homer J", lastname: "Simpson", email: "homer@snp.com", password: "qwerty123")

User.create(username: "Grumpy Cat", firstname: "Grumpy", lastname: "Cat", email: "grumpy@cat.com", password: "qwerty123")
