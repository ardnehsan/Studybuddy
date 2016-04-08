User.create username: "nash", password: "nash"

30.times do
  cohort = Cohort.create cohort_name: Faker::Company.profession, teacher_name: Faker::App.author, description: Faker::Company.catch_phrase
end
