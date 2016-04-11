class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.integer :entry_id
      t.integer :user_id
    end
  end
end
