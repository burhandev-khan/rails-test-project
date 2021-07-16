AdminUser.create(email: 'admin@test.com', password: 'admintest')

author = User.create(email: 'author@gmail.com', name: 'First Author')
user1 = User.create(email: 'user1@gmail.com', name: 'First User')
user2 = User.create(email: 'user2@gmail.com', name: 'Second User')

book1 = Book.create(title: 'Book1', description: 'Book1 is good', author_id: author.id)
book2 = Book.create(title: 'Book2', description: 'Book2 is great', author_id: author.id)

UserBooking.create(user_id: user1.id, book_id: book1.id)
UserBooking.create(user_id: user2.id, book_id: book2.id)


