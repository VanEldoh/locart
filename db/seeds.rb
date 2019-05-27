Booking.destroy_all
Artwork.destroy_all
User.destroy_all

ARTSIZE = ['small', 'medium', 'large']
ARTTYPE = ['Painting', 'Photography', 'Prints', 'Sculpture', 'Work on Paper', 'Design', 'Drawing', 'Installation', 'Film/Video']
ARTCATEGORY = ['Black & White', 'Graphik', 'Expressive', 'Colored']

userTest =  User.new(
  email: "userTest@gmail.com",
  password: "123456",
  first_name: "test",
  last_name: "test",
  username: "test"
  )
userTest.save!

userTest2 =  User.new(
  email: "userTest2@gmail.com",
  password: "654321",
  first_name: "test2",
  last_name: "test2",
  username: "test2"
  )
userTest2.save!

artTest = Artwork.new(
  title: "test",
  description: "test",
  size: "small",
  art_type: 'Painting',
  category: 'Graphik',
  art_date: 1990,
  price: 400
  )
artTest.user = userTest
artTest.save!

book = Booking.new(
  start_date: '2020-02-02',
  end_date: '2020-02-10',
  status: "Pending"
  )

book.artwork = artTest
book.user = userTest2
book.save!

20.times do
  user = User.new(
    email: Faker::Internet.email,
    password: Faker::Internet.password(8),
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    username: Faker::Internet.username
    )
  user.save!
  puts "created #{user.username}"
  artwork = Artwork.new(
    title: Faker::TvShows::TwinPeaks.quote,
    description: Faker::Lorem.paragraph(2),
    size: ARTSIZE.sample,
    art_type: ARTTYPE.sample,
    category: ARTCATEGORY.sample,
    art_date: rand(1980..2019),
    price: rand(200..1200),
    user_id: user.id
    )
  puts "created #{artwork.title}"
  artwork.save!

  User.create( email: "ab@gmail.com", password:"12345678")
end

bookingTest =  Booking.new(
  start_date: Date.new(2019,05,27),
  end_date: Date.new(2019,05,30),
  user_id: User.first.id,
  #TODO Associer artwork réel
  artwork_id: 1,
  status: "pending"
  )
userTest.save!

