require 'faker'

# Clear existing data
Article.destroy_all
Comment.destroy_all

# Create articles
10.times do
  article = Article.create!(
    title: Faker::Lorem.sentence,
    content: Faker::Lorem.paragraphs.join("\n\n"),
    image_path: Faker::LoremPixel.image(size: "300x300", is_gray: false, category: 'abstract'),
    likes: Faker::Number.between(from: 0, to: 100),
    created_at: Faker::Time.between(from: 1.year.ago, to: Time.current),
    updated_at: Faker::Time.between(from: 1.year.ago, to: Time.current)
  )

  # Create comments for each article
  rand(0..5).times do
    article.comments.create!(
      content: Faker::Lorem.paragraph,
      created_at: Faker::Time.between(from: article.created_at, to: Time.current),
      updated_at: Faker::Time.between(from: article.created_at, to: Time.current)
    )
  end
end
