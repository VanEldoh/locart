Booking.destroy_all
Artwork.destroy_all
User.destroy_all

LOCATION = ["101 avenue Philippe Auguste 75011 Paris","16 villa Gaudelet 75011 Paris","Grand Palais Paris","Musée du Louvre Paris","Puces de Saint Ouen Paris"]
ARTWORKIMAGE= ["https://d32dm0rphc51dk.cloudfront.net/zKamQYV2KeCHU5nfNWKadA/large.jpg","https://d32dm0rphc51dk.cloudfront.net/VNs9DGAQczdrlucB_GNJpg/large.jpg","https://d32dm0rphc51dk.cloudfront.net/FqPymyiUDezKjoDHa0zvsA/large.jpg","https://d32dm0rphc51dk.cloudfront.net/5I1qRsqQm6IUDPAA1ccIxQ/large.jpg","https://d32dm0rphc51dk.cloudfront.net/xh7uiJ_TknpXX16HV4VcOQ/large.jpg","https://d32dm0rphc51dk.cloudfront.net/jJ-zPT4pKip6t7pbEE4tOA/large.jpg","https://d32dm0rphc51dk.cloudfront.net/OqIKeqDUMmwZoE27MZShRg/large.jpg","https://d32dm0rphc51dk.cloudfront.net/P9b3pX86t_zJruSOo6dH1Q/large.jpg","https://d32dm0rphc51dk.cloudfront.net/oSLRcPTMA-tMycNIcsKkvg/large.jpg","https://d32dm0rphc51dk.cloudfront.net/vvKWaG9OEkwbEcGPBjJjRg/large.jpg"]

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
  remote_photo_url: ["https://d32dm0rphc51dk.cloudfront.net/jJ-zPT4pKip6t7pbEE4tOA/large.jpg","https://d32dm0rphc51dk.cloudfront.net/OqIKeqDUMmwZoE27MZShRg/large.jpg","https://d32dm0rphc51dk.cloudfront.net/P9b3pX86t_zJruSOo6dH1Q/large.jpg","https://d32dm0rphc51dk.cloudfront.net/oSLRcPTMA-tMycNIcsKkvg/large.jpg","https://d32dm0rphc51dk.cloudfront.net/vvKWaG9OEkwbEcGPBjJjRg/large.jpg"].sample,
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

5.times do
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
    size: Artwork::ARTSIZE.sample,
    art_type: Artwork::ARTTYPE.sample,
    category: Artwork::ARTCATEGORY.sample,
    art_date: rand(1980..2019),
    price: rand(200..1200),
    address: LOCATION.sample,
    remote_photo_url: ["https://d32dm0rphc51dk.cloudfront.net/jJ-zPT4pKip6t7pbEE4tOA/large.jpg","https://d32dm0rphc51dk.cloudfront.net/OqIKeqDUMmwZoE27MZShRg/large.jpg","https://d32dm0rphc51dk.cloudfront.net/P9b3pX86t_zJruSOo6dH1Q/large.jpg","https://d32dm0rphc51dk.cloudfront.net/oSLRcPTMA-tMycNIcsKkvg/large.jpg","https://d32dm0rphc51dk.cloudfront.net/vvKWaG9OEkwbEcGPBjJjRg/large.jpg"].sample,
    user_id: user.id
    )
  puts "created #{artwork.title} #{artwork.address} #{artwork.latitude} #{artwork.longitude}"
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

