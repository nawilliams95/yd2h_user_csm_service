# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.create ([
    {title: Faker::Book.title, content: Faker::Lorem.paragraphs(number: 2, supplemental: true), author: 'cutiewho', private: false, tags: ['fun', 'test', 'life'], user_id: 1 },
    {title: Faker::Book.title, content: Faker::Lorem.paragraphs(number: 3, supplemental: true), author: 'peepingTom', private: false, tags: ['test', 'life'], user_id: 2 },
    {title: Faker::Book.title, content: Faker::Lorem.paragraphs(number: 1, supplemental: true), author: 'cutiewho', private: false, user_id: 1 },
    {title: Faker::Book.title, content: Faker::Lorem.paragraphs(number: 2, supplemental: true), author: 'cutiewho', private: true, tags: ['test'], user_id: 1 },
    {title: Faker::Book.title, content: Faker::Lorem.paragraphs(number: 4, supplemental: true), author: 'greenmachine', private: false, tags: ['life'], user_id: 3 }
])
puts 'Seeded database'