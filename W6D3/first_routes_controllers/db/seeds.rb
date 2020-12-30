# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
user1 = User.create(username: 'Sediqa')
user2 = User.create(username: 'Alexey')
user3 = User.create(username: 'Mike')

ArtWork.destroy_all
artwork1 = ArtWork.create(title: "Sky", image_url: "Cdrive.com", artist_id: user1.id)
artwork2 = ArtWork.create(title: "Sun", image_url: "GoGo.com", artist_id: user2.id)
artwork3 = ArtWork.create(title: "RedMars", image_url: "hello.com", artist_id: user2.id)

ArtworkShare.destroy_all
artwork_share1 = ArtworkShare.create(artwork_id: artwork1.id, viewer_id: user3.id )
artwork_share2 = ArtworkShare.create(artwork_id: artwork2.id, viewer_id: user2.id )
artwork_share3 = ArtworkShare.create(artwork_id: artwork3.id, viewer_id: user1.id )
