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
