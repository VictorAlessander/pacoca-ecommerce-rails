# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts("Generating data for Category...")
10.times do |x|
	categories = Category.create(
		cod: Faker::Number.number(3),
		name: Faker::Commerce.department(1))
end
puts("Generating data for Category...[OK]")

puts("Generating data for Product...")
Category.all.each do |category|
	Random.rand(1..2).times do |x|
		products = Product.create(
			cod: Faker::Number.number(3),
			name: Faker::Commerce.product_name,
			price: Faker::Commerce.price,
			category: category)
	end
end
puts("Generating data for Product...[OK]")

puts("Generating account with full attributes...")
User.create(
	id: 1,
	email: 'admin@pacocaecommerce.com.br',
	password: 'administrador')

Person.create(
	id: 1,
	name: "Administrador",
	birthday: "1997-04-05",
	user_id: 1
	)

Address.create(
	id: 1,
	street: 'None',
	cep: '00000-000',
	city: 'None',
	state: 'None',
	person_id: 1)
puts("Generating account with full attributes...[OK]")