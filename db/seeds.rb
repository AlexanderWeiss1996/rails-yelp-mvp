# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

# ["chinese", "italian", "japanese", "french", "belgian"]

puts 'Creating restaurants...'
chezpauli = { name: 'ChezPauli', address: 'Grolmanstrasse 21', phone_number: '2637519', category: 'chinese'}
savigny = { name: 'Savigny', address: 'Grolmanstrasse 54', phone_number: '827927', category: 'french'}
madchenitaliener = { name: 'Madchenitaliener', address: 'Kantstarsse 192', phone_number: '261818720', category: 'italian'}
bra = { name: 'Bra', address: 'Kuhdamm 211', phone_number: '739272', category: 'japanese'}
tapas = { name: 'Tapas32', address: 'Hegendamm 321', phone_number: '389898', category: 'belgian'}

[ chezpauli, savigny, madchenitaliener, bra, tapas ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
