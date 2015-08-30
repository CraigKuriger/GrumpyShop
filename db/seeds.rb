require 'money'

Category.destroy_all

Category.create(name: "Movies")
Category.create(name: "Music")
Category.create(name: "Books")
Category.create(name: "Other")

movies = Category.find_by(name: "Movies")
music = Category.find_by(name: "Music")
books = Category.find_by(name: "Books")
other = Category.find_by(name: "Other")

movies.products.create(name: "Grumpy Cat's Xmas Movie", description: "Worst. Movie. Ever.", image_url: "http://upload.wikimedia.org/wikipedia/en/1/1d/Grumpy_Cat's_Worst_Christmas_Ever_cover.jpg", price: "29.99")

music.products.create(name: "Grumpy Cat Soundtrack", description: "Worst. Soundtrack. Ever.", image_url: "http://ecx.images-amazon.com/images/I/81MCRODBhfL._SL1500_.jpg", price: "29.99")

books.products.create(name: "Grumpy Cat: A Grumpy Book", description: "Worst. Book. Ever.", image_url: "http://ecx.images-amazon.com/images/I/51SszqxmPyL._SY344_BO1,204,203,200_.jpg", price: "29.99")

books.products.create(name: "Grumpy Cat's Guide To Life", description: "Worst. Book. Ever.", image_url: "https://s-media-cache-ak0.pinimg.com/236x/11/7d/4d/117d4d2eb0b80e31ede36806fa043b53.jpg", price: "29.99")

books.products.create(name: "Grumpy Cat: 2016 Calendar", description: "Worst. Calendar. Ever.", image_url: "http://ecx.images-amazon.com/images/I/617wmIWgfKL._SX258_BO1,204,203,200_.jpg", price: "29.99")

books.products.create(name: "Grumpy Cat: No It All", description: "Everything you need to NO!", image_url: "http://ecx.images-amazon.com/images/I/812HelsCyhL.jpg", price: "29.99")

other.products.create(name: "Grumpy Cat Plush Toy", description: "You can't be half a Gangster", image_url: "http://ecx.images-amazon.com/images/I/51NNW9ZbHaL._SY300_.jpg", price: "29.99")

User.create(username: "Craig", firstname: "Craig", lastname: "Kuriger", email: "craig@craig.com", password: "qwerty123", admin: true)

User.create(username: "Mr Burns", firstname: "C Montgomery", lastname: "Burns", email: "mrburns@snp.com", password: "qwerty123", admin: true)

User.create(username: "Homer", firstname: "Homer J", lastname: "Simpson", email: "homer@snp.com", password: "qwerty123")

User.create(username: "Grumpy Cat", firstname: "Grumpy", lastname: "Cat", email: "grumpy@cat.com", password: "qwerty123")
