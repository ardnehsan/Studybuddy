class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
        t.integer :card_id
        t.string :front
        t.text :back

      t.timestamps null: false
    end
  end
end
