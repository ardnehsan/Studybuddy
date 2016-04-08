class CreateCohorts < ActiveRecord::Migration
  def change
    create_table :cohorts do |t|
        t.string :cohort_name
        t.string :teacher_name
        t.string :description
      t.timestamps null: false
    end
  end
end
