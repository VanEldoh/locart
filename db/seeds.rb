Booking.destroy_all
Artwork.destroy_all
User.destroy_all

ARTSIZE = ['small', 'medium', 'large']
ARTTYPE = ['Painting', 'Photography', 'Prints', 'Sculpture', 'Work on Paper', 'Design', 'Drawing', 'Installation', 'Film/Video']
ARTCATEGORY = ['Black & White', 'Graphik', 'Expressive', 'Colored']

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



