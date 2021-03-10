# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Cleaning DB"

Piano.destroy_all
Booking.destroy_all
User.destroy_all

Piano.create({name: 'B1', price: 50, brand: 'Korg', photo: Cloudinary::Uploader.download('v1615379237/7ihmynbdvtpn9livtvf3upe22cnl.jpg')})