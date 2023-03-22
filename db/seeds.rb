user = User.new(name: "Mike", email: "mike@test.com", password_digest: "password", image: "https://avatars.githubusercontent.com/u/52894341?v=4")
user.save

user = User.new(name: "Ed", email: "Ed@test.com", password_digest: "password", image: "https://avatars.githubusercontent.com/u/97701763?v=4")
user.save

user = User.new(name: "Josh", email: "josh@test.com", password_digest: "password", image: "https://avatars.githubusercontent.com/u/125905920?v=4")
user.save

user = User.new(name: "Anna", email: "anna@test.com", password_digest: "password", image: "https://avatars.githubusercontent.com/u/121132842?v=4")
user.save
