Article.destroy_all
User.destroy_all

5.times do |t|
  user = User.create!(
    email: "email$#{t}@gmail.com",
    password: "email$#{t}@gmail.com",
    password_confirmation: "email$#{t}@gmail.com",
  )
end

30.times do
  article = Article.create!(
    title: Faker::Book.title,
    content: Faker::Lorem.sentence(word_count: 6),
    user_id: User.all.sample.id,
  )
end
