30.times do
  cohort = Cohort.create cohort_name: Faker::Company.profession, teacher_name: Faker::App.author, description: Faker::Company.catch_phrase
end

200.times do
  entry = Entry.create word: Faker::Lorem.word, definition: Faker::Lorem.sentence, cohort_id: (1..30).to_a.sample
end
