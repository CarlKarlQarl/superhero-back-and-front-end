# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

batman = Superhero.create(name: "Batman")
superman = Superhero.create(name: "Superman")
spiderman = Superhero.create(name: "Spiderman")

Supervillain.create(name: "Joker", superhero: batman)
Supervillain.create(name: "Penguin", superhero: batman)

Supervillain.create(name: "Lex Luthor", superhero: superman)
Supervillain.create(name: "General Zod", superhero: superman)

Supervillain.create(name: "Green Goblin", superhero: spiderman)
Supervillain.create(name: "Venom", superhero: spiderman)