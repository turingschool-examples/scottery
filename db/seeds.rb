# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

class Seed
  def initialize
    generate_articles
  end

  def generate_articles
    50.times do |i|
      post = Post.create!(
        title: Faker::Lorem.sentence(5),
        body:  Faker::Lorem.paragraphs(5).join("\r\n\r")
        )

      puts "Article #{i}: #{post.title} added!"
    end
  end
end

Seed.new
