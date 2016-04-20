5.times do
  cohort = Cohort.create cohort_name: Faker::Company.profession, teacher_name: Faker::App.author, description: Faker::Company.catch_phrase
end

200.times do
  entry = Entry.create word: Faker::Lorem.word, definition: Faker::Lorem.sentence, cohort_id: (1..5).to_a.sample
end

15.times do
  card = Card.create front: Faker::Lorem.word, back: Faker::Lorem.paragraph, cohort_id: (1..5).to_a.sample
end
