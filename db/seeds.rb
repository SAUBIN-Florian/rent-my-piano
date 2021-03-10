# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Cleaning DB"
ActiveStorage::Attachment.all.find_each do |a|
    a.purge
end
ActiveStorage::Blob.all.find_each do |b|
    b.purge
end
Piano.destroy_all
Booking.destroy_all
User.destroy_all
