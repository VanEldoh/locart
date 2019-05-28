Booking.destroy_all
Artwork.destroy_all
User.destroy_all

LOCATION = ["101 avenue Philippe Auguste 75011 Paris","16 villa Gaudelet 75011 Paris","Grand Palais Paris","Musée du Louvre Paris","Puces de Saint Ouen Paris"]
ARTWORKIMAGE= ["https://d32dm0rphc51dk.cloudfront.net/zKamQYV2KeCHU5nfNWKadA/large.jpg","https://d32dm0rphc51dk.cloudfront.net/VNs9DGAQczdrlucB_GNJpg/large.jpg","https://d32dm0rphc51dk.cloudfront.net/FqPymyiUDezKjoDHa0zvsA/large.jpg","https://d32dm0rphc51dk.cloudfront.net/5I1qRsqQm6IUDPAA1ccIxQ/large.jpg","https://d32dm0rphc51dk.cloudfront.net/xh7uiJ_TknpXX16HV4VcOQ/large.jpg","https://d32dm0rphc51dk.cloudfront.net/jJ-zPT4pKip6t7pbEE4tOA/large.jpg","https://d32dm0rphc51dk.cloudfront.net/OqIKeqDUMmwZoE27MZShRg/large.jpg","https://d32dm0rphc51dk.cloudfront.net/P9b3pX86t_zJruSOo6dH1Q/large.jpg","https://d32dm0rphc51dk.cloudfront.net/oSLRcPTMA-tMycNIcsKkvg/large.jpg","https://d32dm0rphc51dk.cloudfront.net/vvKWaG9OEkwbEcGPBjJjRg/large.jpg"]

# USER-PROFILS
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

# ARTWORK-PROFILES
artTest = Artwork.new(
  title: "Bubbles",
  description: "Acrylique sur papier lin",
  size: "small",
  art_type: 'Painting',
  category: 'Graphik',
  art_date: 1990,
  price: 150,
  address: "72 Rue Jean-Pierre-Timbaud, 75011 Paris",
  )
artTest.remote_photo_url = "https://amelie-paris.com/12032-large_default/balls.jpg"
artTest.user = userTest
artTest.save!

artTest1 = Artwork.new(
  title: "JUSTE",
  description: "Acrylique sur toile",
  size: "small",
  art_type: 'Painting',
  category: 'Colored',
  art_date: 2008,
  price: 400,
  address:"187 Rue de Clignancourt, 75018 Paris",
  )
artTest1.remote_photo_url = "https://amelie-paris.com/fr/peintures/3827-juste-ii.html"
artTest1.user = userTest
artTest1.save!

artTest2 = Artwork.new(
  title: "Together",
  description: "Bronze, fonderie fusion",
  size: "small",
  art_type: 'Sculpture',
  category: 'Expressive',
  art_date: 1998,
  price: 340,
  address: "4 Rue Saint-Claude, 75003 Paris",
  )
artTest2.remote_photo_url = "https://amelie-paris.com/15478-large_default/le-chemin.jpg"
artTest2.user = userTest
artTest2.save!

artTest3 = Artwork.new(
  title: "Le Bonheur",
  description: "La nature et les arbres",
  size: "medium",
  art_type: 'Prints',
  category: 'Expressive',
  art_date: 2018,
  price: 50,
  address: "204 Rue de Paris, 93100 Montreuil",
  )
artTest3.remote_photo_url = "https://amelie-paris.com/2440-large_default/le-bonheur-a-l-instant-m-enivre-il-me-saoule.jpg"
artTest3.user = userTest
artTest3.save!

artTest4 = Artwork.new(
  title: "Sans-titre",
  description: "Photographie argentique sur pellicule noir et blanc",
  size: "medium",
  art_type: 'Photography',
  category: 'Black & White',
  art_date: 2015,
  price: 150,
  address: "124 Rue de Belleville,75010 Paris",
  )
artTest4.remote_photo_url = "https://amelie-paris.com/14641-large_default/sans-titre-2.jpg"
artTest4.user = userTest
artTest4.save!

artTest5 = Artwork.new(
  title: "Diasec",
  description: "procédé argento-numérique monté sous Diasec",
  size: "medium",
  art_type: 'Work on Paper',
  category: 'Expressive',
  art_date: 2006,
  price: 555,
  address: "20 Rue du Faubourg Saint-Antoine, 75012 Paris",
  )
artTest5.remote_photo_url = "https://amelie-paris.com/1807-large_default/demantelement.jpg"
artTest5.user = userTest
artTest5.save!

artTest6 = Artwork.new(
  title: "Space 17",
  description: "Huile sur lin",
  size: "large",
  art_type: 'Drawing',
  category: 'Black & White',
  art_date: 1999,
  price: 340,
  address: "284 Boulevard Voltaire, 75011 Paris",
  )
artTest6.remote_photo_url = "https://amelie-paris.com/4410-large_default/peinture-727-philippedelatour.jpg"
artTest6.user = userTest
artTest6.save!

artTest7 = Artwork.new(
  title: "sans-titre-2",
  description: "Fil de fer, papier et contre poids en fonte d'aluminium",
  size: "large",
  art_type: 'Sculpture',
  category: 'Colored',
  art_date: 2003,
  price: 66,
  address: "34 Rue Amelot, 75011 Paris",
  )
artTest7.remote_photo_url = "https://amelie-paris.com/8836-large_default/aile-de-re-n4.jpg"
artTest7.user = userTest
artTest7.save!

artTest8 = Artwork.new(
  title: "La Femme",
  description: "Acrylique, crayon graphite, gesso sur planche et bois",
  size: "large",
  art_type: 'Drawing',
  category: 'Expressive',
  art_date: 2004,
  price: 75,
  address: "22 Rue du Débarcadère, 75017 Paris",
  )
artTest8.remote_photo_url = "https://amelie-paris.com/7421-large_default/gf02.jpg"
artTest8.user = userTest
artTest8.save!

artTest9 = Artwork.new(
  title: "DiscoDisko",
  description: "Toile coton, acrylique , aérosol, papier",
  size: "small",
  art_type: 'Drawing',
  category: 'Expressive',
  art_date: 2013,
  price: 80,
  address: "52 Rue de la Chaussée d'Antin, 75009 Paris",
  )
artTest9.remote_photo_url = "https://amelie-paris.com/14213-large_default/lac-n-2.jpg"
artTest9.user = userTest
artTest9.save!

artTest10 = Artwork.new(
  title: "Seco",
  description: "pastel à la cire",
  size: "small",
  art_type: 'Installation',
  category: 'Colored',
  art_date: 2016,
  price: 188,
  address: "10 Rue Galilée, 75116 Paris",
  )
artTest10.remote_photo_url = "https://amelie-paris.com/4756-large_default/apc1041.jpg"
artTest10.user = userTest2
artTest10.save!

artTest11 = Artwork.new(
  title: "Plant over Plants",
  description: "pastel à la cire sur carte postale",
  size: "small",
  art_type: 'Drawing',
  category: 'Graphik',
  art_date: 2019,
  price: 340,
  address: "17 Rue Baudelique, 75018 Paris",
  )
artTest11.remote_photo_url = "https://amelie-paris.com/11052-large_default/obliterees-4.jpg"
artTest11.user = userTest2
artTest11.save!

artTest12 = Artwork.new(
  title: "Dragon",
  description: "Photographie",
  size: "medium",
  art_type: 'Film/Video',
  category: 'Expressive',
  art_date: 2000,
  price: 150,
  address: "55 Boulevard de Rochechouart, 75009 Paris" ,
  )
artTest12.remote_photo_url = "https://amelie-paris.com/6923-large_default/fenetre-lit.jpg"

artTest12.user = userTest2
artTest12.save!

artTest13 = Artwork.new(
  title: "FRAGMENTS N°5",
  description: "Photographie noir et blanc argentique , numérotée et signée",
  size: "medium",
  art_type: 'Design',
  category: 'Graphik',
  art_date: 2001,
  price: 140,
  address: "4 Rue Meyerbeer, 75009 Paris",
  )
artTest13.remote_photo_url = "https://amelie-paris.com/13579-large_default/fragments-n-5.jpg"

artTest13.user = userTest2
artTest13.save!

artTest14 = Artwork.new(
  title: "Earth",
  description: "Photographie sur papier argentique",
  size: "medium",
  art_type: 'Prints',
  category: 'Expressive',
  art_date: 2002,
  price: 144,
  address: "53 ter Quai des Grands Augustins, 75006 Paris",
  )
artTest14.remote_photo_url = "https://amelie-paris.com/16570-large_default/vaso-sogliola.jpg"
artTest14.user = userTest2
artTest14.save!

artTest15 = Artwork.new(
  title: "Igor-Trend",
  description: "",
  size: "large",
  art_type: 'Photography',
  category: 'Black & White',
  art_date: 2019,
  price: 35,
  address: " 54 Rue Jenner, 75013 Paris",
  )
artTest15.remote_photo_url = "https://amelie-paris.com/7709-large_default/figures-libres2.jpg"
artTest15.user = userTest2
artTest15.save!

artTest16 = Artwork.new(
  title: "Ananas",
  description: " Acier peint",
  size: "large",
  art_type: 'Drawing',
  category: 'Expressive',
  art_date: 2018,
  price: 133,
  address: "44 Boulevard de Bercy, 75012 Paris",
  )
artTest16.remote_photo_url = "https://amelie-paris.com/14308-large_default/ganesh.jpg"
artTest16.user = userTest2
artTest16.save!

artTest17 = Artwork.new(
  title: "Tradition is gold",
  description: "Cristal et terre faience",
  size: "large",
  art_type: 'Work on Paper',
  category: 'Black & White',
  art_date: 1978,
  price: 100,
  address: "24 Avenue du Bel air, 75012 Paris",
  )
artTest17.remote_photo_url = "https://amelie-paris.com/4641-large_default/ensemble.jpg"
artTest17.user = userTest2
artTest17.save!

# BOOKING-PROFILES
book = Booking.new(
  start_date: '2019-06-02',
  end_date: '2019-06-10',
  status: "Pending"
  )

book.artwork = artTest
book.user = userTest
book.save!

book2 = Booking.new(
  start_date: '2020-02-02',
  end_date: '2020-02-10',
  status: "Pending"
  )

book.artwork = artTest1
book.user = userTest
book.save!

book3 = Booking.new(
  start_date: '2020-02-02',
  end_date: '2020-02-10',
  status: "Accepted"
  )

book.artwork = artTest2
book.user = userTest2
book.save!

book3 = Booking.new(
  start_date: '2020-02-02',
  end_date: '2020-02-10',
  status: "Declined"
  )

book.artwork = artTest3
book.user = userTest2
book.save!



# 5.times do
#   user = User.new(
#     email: Faker::Internet.email,
#     password: Faker::Internet.password(8),
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     username: Faker::Internet.username
#     )
#   user.save!
#   puts "created #{user.username}"
#   artwork = Artwork.new(
#     title: Faker::TvShows::TwinPeaks.quote,
#     description: Faker::Lorem.paragraph(2),
#     size: Artwork::ARTSIZE.sample,
#     art_type: Artwork::ARTTYPE.sample,
#     category: Artwork::ARTCATEGORY.sample,
#     art_date: rand(1980..2019),
#     price: rand(200..1200),
#     address: LOCATION.sample,
#     remote_photo_url: ["https://d32dm0rphc51dk.cloudfront.net/jJ-zPT4pKip6t7pbEE4tOA/large.jpg","https://d32dm0rphc51dk.cloudfront.net/OqIKeqDUMmwZoE27MZShRg/large.jpg","https://d32dm0rphc51dk.cloudfront.net/P9b3pX86t_zJruSOo6dH1Q/large.jpg","https://d32dm0rphc51dk.cloudfront.net/oSLRcPTMA-tMycNIcsKkvg/large.jpg","https://d32dm0rphc51dk.cloudfront.net/vvKWaG9OEkwbEcGPBjJjRg/large.jpg"].sample,
#     user_id: user.id
#     )
#   puts "created #{artwork.title} #{artwork.address} #{artwork.latitude} #{artwork.longitude}"
#   artwork.save!

#   User.create( email: "ab@gmail.com", password:"12345678")
# end



