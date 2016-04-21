class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
        t.text :post
        t.integer :cohort_id
      t.timestamps null: false
    end
  end
end
