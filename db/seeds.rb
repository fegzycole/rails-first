# frozen_string_literal: true

require 'faker'

skills = %w[Ruby Django NodeJS MongoDB Postgresql]

10.times do |blog|
  Blog.create!(
    title: "My blogpost #{blog}",
    body: Faker::Lorem.paragraph
  )
end

puts '10 blogposts created'

5.times do |skill|
  Skill.create!(
    title: skills[skill],
    percent_utilized: 5 * skill
  )
end

puts 'five skills created'

9.times do |portfolio|
  Portfolio.create!(
    title: "Portfolio title #{portfolio}",
    subtitle: 'My great service',
    body: Faker::Lorem.paragraph,
    main_image: 'https://via.placeholder.com/600x400',
    thumb_image: 'https://via.placeholder.com/350x200'
  )
end
