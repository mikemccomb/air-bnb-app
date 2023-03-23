user = User.new(name: "Mike", email: "mike@test.com", password: "password", password_confirmation: "password", image: "https://avatars.githubusercontent.com/u/52894341?v=4")
user.save

user = User.new(name: "Ed", email: "Ed@test.com", password: "password", password_confirmation: "password", image: "https://avatars.githubusercontent.com/u/97701763?v=4")
user.save

user = User.new(name: "Josh", email: "josh@test.com", password: "password", password_confirmation: "password", image: "https://avatars.githubusercontent.com/u/125905920?v=4")
user.save

user = User.new(name: "Anna", email: "anna@test.com", password: "password", password_confirmation: "password", image: "https://avatars.githubusercontent.com/u/121132842?v=4")
user.save

room = Room.new(user_id: 1, address: "123 Hollywood Blvd", city: "LA", state: "CA", price: 300, description: "Come stay at Jason Nesmith's home set in the idyllic Hollywood Hills. Watch out for foreign invaders", home_type: "Mansion Home", room_type: "Private", total_occupancy: 12, total_bedrooms: 8, total_bathrooms: 4)
room.save

room = Room.new(user_id: 2, address: "190 W Sixth Street", city: "Boston", state: "MA", price: 100, description: "Have you ever met a Will Hunting you didn't like? Now you have the chance to stay in his three flat! Located right in the heart of Boston", home_type: "Apartment", room_type: "Shared", total_occupancy: 3, total_bedrooms: 2, total_bathrooms: 1)
room.save

room = Room.new(user_id: 3, address: "6409 Wilbur Drive", city: "Austin", state: "TX", price: 200, description: "You won't be confused, but you will be dazed at Carl's cool house. Located on the beautiful streets of Austin!", home_type: "Single-Family Home", room_type: "Private", total_occupancy: 12, total_bedrooms: 4, total_bathrooms: 3)
room.save

room = Room.new(user_id: 4, address: "122 Callahan Drive", city: "Sandusky", state: "OH", price: 250, description: "Want to live in the coolest house in the middle of nowhere? Come visit Callahan Auto Parts and hangout with Tomy", home_type: "Mansion", room_type: "Private", total_occupancy: 12, total_bedrooms: 8, total_bathrooms: 6)
room.save

roomimage = RoomImage.new(room_id: 1, url: "https://upload.wikimedia.org/wikipedia/commons/2/22/Case_Study_House_No._22.JPG")
roomimage.save

roomimage = RoomImage.new(room_id: 2, url: "https://cdn10.bostonmagazine.com/wp-content/uploads/2017/01/good-will-hunting-apartment-sale-2.jpg")
roomimage.save

roomimage = RoomImage.new(room_id: 3, url: "https://images.squarespace-cdn.com/content/v1/57eb579b59cc68cc4f3a433e/1484900592950-GADD34RSQJIEHWDV1SVA/Dazed_IMG_3783.jpg")
roomimage.save

roomimage = RoomImage.new(room_id: 4, url: "https://m.media-amazon.com/images/M/MV5BNDg1MDBiNTMtNjVmYy00YzgzLWIyZTItNjU0ZWEzNjBkMmU0XkEyXkFqcGdeQXVyOTc5MDI5NjE@._V1_.jpg")
roomimage.save

reservation = Reservation.create(user_id: 1, room_id: 1, start_date: "01/01/23", end_date: "01/20/23", price: 300, total: 6000)

reservation = Reservation.create(user_id: 2, room_id: 2, start_date: "01/01/23", end_date: "01/20/23", price: 100, total: 2000)

reservation = Reservation.create(user_id: 3, room_id: 3, start_date: "01/01/23", end_date: "01/20/23", price: 200, total: 4000)

reservation = Reservation.create(user_id: 4, room_id: 4, start_date: "01/01/23", end_date: "01/20/23", price: 250, total: 5000)

review = Review.create(reservation_id: 1, rating: 5, comment: "Gorgeous, but we were invaded by aliens during our stay.")

review = Review.create(reservation_id: 2, rating: 3, comment: "Pretty okay.")

review = Review.create(reservation_id: 3, rating: 1, comment: "It was good for what we wanted.")

review = Review.create(reservation_id: 4, rating: 4, comment: "Classic, I love Sandusky, OH.")

