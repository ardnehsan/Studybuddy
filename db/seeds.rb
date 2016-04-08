30.times do
  cohort = Cohort.create cohort_name: Faker::App.name, teacher_name: Faker::Name.name
end
